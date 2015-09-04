---
layout: post
title:  "Firehose Nozzles"
date:   2015-09-04 11:52:50
---

# Summary

Nozzles are programs which consume the loggregator firehose and transform the data coming out of it. For example the [datadog nozzle](https://github.com/cloudfoundry-incubator/datadog-firehose-nozzle) publishes metrics coming from the firehose to [datadog](https://www.datadoghq.com). The [syslog nozzle](https://github.com/cloudfoundry-community/firehose-to-syslog) filters out log messages coming from the firehose and sends it to a syslog server. In this post we will learn about the firehose, how a nozzle can consume it and some best practices around running a nozzle.

# Loggregator Firehose

The loggregator firehose is a websocket endpoint which streams all the events coming from a Cloud Foundry deployment. This includes logs, HTTP events and container metrics from all applications. It also includes metrics from all components and any errors in the system. Since the data coming from the firehose may contain sensitive information (for example, customer information in the application logs), the firehose is only accessible to users who have the right permissions.

The firehose is served by the [loggregator traffic-controller](https://github.com/cloudfoundry/loggregator/tree/develop/src/trafficcontroller). The address of the traffic controller can be discovered by hitting the info endpoint on the API and getting the value of the `doppler_logging_endpoint`.

```
cf curl /v2/info | jq .doppler_logging_endpoint
# outputs "wss://doppler.10.244.0.34.xip.io:443" for a bosh-lite CF environment
```

The traffic-controller serves the firehose over websocket at the `/firehose` endpoint. The events coming out of the firehose are formatted as protobuf messages conforming to the [dropsonde-protocol](https://github.com/cloudfoundry/dropsonde-protocol).

# Authentication
The traffic-controller requires that when a client connects to the firehose endopint, it provide a valid oauth-token. The token is used to check with the UAA whether the client should be able to access the firehose.

When writing a nozzle, you can either use the credentials for a UAA client who already has access to the firehose  or create a new client. The firehose is only accessible to UAA clients who have the `doppler.firehose` UAA scope set. You can add a client by editing the Cloud Foundry manifest's properties.uaa.clients section. For example to add a client for a nozzle, you would add the following in the manifest:

```
properties:
  uaa:
    clients:
      my-nozzle:
        access-token-validity: 1209600
        authorized-grant-types: authorization_code,client_credentials,refresh_token
        override: true
        secret: <password>
        scope: openid,oauth.approvals,doppler.firehose
        authorities: oauth.login,doppler.firehose
```

Now with the client name and credentials, you can request an oauth-token by issuing a [POST to the `/oauth/token` endpoint](https://github.com/cloudfoundry/uaa/blob/master/docs/UAA-APIs.rst#password-grant-with-client-and-user-credentials-post-oauth-token). Alternatively, you can use a UAA client like [uaago](https://github.com/cloudfoundry/uaa/blob/master/docs/UAA-APIs.rst#password-grant-with-client-and-user-credentials-post-oauth-token) which will do that for you.


# Consuming the Firehose (NOAA)
You can write your own library which consumes events from the firehose but if you are writing your program in Go, you should use the [NOAA library](https://github.com/cloudfoundry/noaa). This library is supported by the loggregator team and is the recommended way of accessing the firehose.

There are basically two steps to consume events from the firehose:

1. Create a noaa.Consumer: The `noaa.Consumer` type is used to communicate with various traffic-controller endpoints including the firehose. When creating a new Consumer, you must specify the address of the traffic-controller (see [Loggregator Firehose](#loggregator-firehose)), TLS configuration and an optional proxying function.

1. Consume the firehose: Once you have a consumer, you will call the `Consumer.Firehose` method to consume events from the firehose. You need to pass in a subscription ID (see [Scaling](#scaling)), a valid oauth token (see [Authentication](#authentication)), an events channel and an error channel. The consumer will send events coming from the firehose to the events channel. Any errors which occur while the firehose is running, including connection errors (see [Slow Nozzle Alerts](#slow-nozzle-alerts)), will be sent down the error channel.

A good way of seeing the firehose in action is to run the [firehose_sample application](https://github.com/cloudfoundry/noaa/blob/master/firehose_sample/main.go) present in the NOAA source code. The sample application requires that a valid oauth-token and a traffic-controller address be set as environment variables.

```
CF_ACCESS_TOKEN="valid oauth-token" \
DOPPLER_ADDR="traffic-controller address" \
go run main.go
```

Once you have the firehose_sample running you should be able to see data from the firehose printed on your screen. Now that you have data coming from the firehose, you can start with the code from the loggreg

# Slow Nozzle Alerts

The traffic controller is setup to alert nozzles who are slow at consuming events. If the nozzle is falling behind, the loggregator system will alert the nozzle in two ways

- TruncatingBuffer alerts: If the nozzle is consuming messages slower than they are being produced, the loggregator system may try and help the nozzle catch up by dropping messages. When this happens the loggregator system will send a log message down the firehose saying "TB: Output channel too full. Dropped (n) messages", where "n" is the number of messages it dropped. It will also emit a CounterEvent with the name `TruncatingBuffer.DroppedMessages`. The nozzle will receive both these messages from the firehose and it should alert the operator that it's falling behind.

- PolicyViolation error: The traffic-controller periodically sends "ping" control messages over the firehose websocket connection. If the "ping" messages aren't replied with "pong" messages within 30 seconds, the traffic-controller will assume that the nozzle is slow and close the websocket connection with the websocket error code for "ClosePolicyViolation" (1008). The nozzle should intercept this websocket close error and alert the operator that it's falling behind.

Based on these slow alerts the operator can choose to scale up the nozzle.

# Scaling

Nozzles can be scaled by using the subscription ID, which is specified when the nozzle connects to the firehose. If you use the same subscription ID on each nozzle instance, the firehose will evenly distribute events across all instances of the nozzle. For example, if you have two nozzles with the same subscription ID, then half the events will go to one nozzle and half to the other. Similarly if there were three instances of the nozzle, then each instance would get one-third the traffic.

A stateless nozzle should handle scaling gracefully. But if the nozzle buffers or caches the data, the nozzle author must test what happens when the nozzle is scaled up or scaled down.

# Further Reading

The best way to write and understand nozzles is to go through the source code of some nozzles.

* [Datadog Firehose Nozzle](https://github.com/cloudfoundry-incubator/datadog-firehose-nozzle)
* [Datadog Firehose Nozzle BOSH Release](https://github.com/cloudfoundry-incubator/datadog-firehose-nozzle-release)
* [Syslog Firehose Nozzle](https://github.com/cloudfoundry-community/firehose-to-syslog)
* [OpenTSDB Firehose Nozzle](https://github.com/pivotal-cloudops/opentsdb-firehose-nozzle)

