---
layout: post
title:  "Metrics separated by each CF component"
date:   2015-09-08 15:02:00
---
# Metrics By Component
- [Cloud Controller](#cloud-controller)
- [HM9000](#hm9000)
- [Doppler](#doppler)
- [Traffic-Controller](#traffic-controller)
- [Syslog Drain Binder](#syslog-drain-binder)
- [DEA Logging Agent](#dea-logging-agent)
- [Metron Agent](#metron-agent)
- [Diego](#diego)

# Cloud Controller

Metric Name                                                   | Description
--------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------
vcap_sinatra.requests.outstanding                             | Number of requests currently being processed
vcap_sinatra.requests.completed                               | Number of requests that have been completed
vcap_sinatra.http_status.[status_code]                        | Metrics on number of http response codes for all requests
vcap_sinatra.recent_errors                                    | 50 most recent errors
log_counts.[severity]                                         | Metrics for number of log messages of various severity
cc_user_count                                                 | "Total number of users ever created (includes inactive users).  Note: this field is updated at least every 10 minutes."
cc_job_queue_length.[queue_type]                              | "Number of delayed_jobs that have yet to run for the first time. Note: this field is updated at least once every 30 seconds"
cc_job_queue_length.total                                     | Total number of delayed_jobs that have yet to run for the first time
thread_info.[rest bellow here]                                | Note: these fields are updated at least once every 30 seconds
thread_info.thread_count                                      | Total number of threads that are either runnable or stopped
thread_info.event_machine.connection_count                    | Number of open connections to event machine
thread_info.event_machine.threadqueue.size                    | Number of unscheduled tasks in the threadqueue
thread_info.event_machine.threadqueue.num_waiting             | Number of scheduled tasks in the threadqueue
thread_info.event_machine.resultqueue.size                    | Number of unscheduled tasks in the result
thread_info.event_machine.resultqueue.num_waiting             | Number of scheduled tasks in the result
cc_failed_job_count.[queue_type]                              | "Number of failed jobs sorted by queue type. Updated once every 30 seconds. Note: this is unrelated to the worker
cc_failed_job_count.total                                     | Total number of failed jobs
uptime_in_seconds                                             | "The uptime of the process
uptime                                                        | "The uptime of the process
mem_bytes                                                     | RSS bytes calculated by the OS
mem_used_bytes                                                | total memory used according to the OS
mem_free_bytes                                                | total memory available according to the OS
cpu_load_avg                                                  | system cpu load average over a minute according to the OS
cpu                                                           | the percent cpu usage by the process
num_cores                                                     | number of CPUs of the host machine

[Top](#metrics-by-component)

# HM9000

 Metric Name                          | Description
--------------------------------------|---------------------------------------------------------------------------------------------------------------------------
 HM9000.numCpus                       | Number of CPUs for the HM9000 box with the lock
 HM9000.numGoRoutines                 | Number of go routines running on the metrics server on the HM9000 with the lock
 HM9000.HM9000.StartCrashed           | Increments each time HM9000 tries to start a crashed instance
 HM9000.HM9000.StartEvacuating        | Increments each time HM9000 is evacuating an instance and sends an immediate start and sometimes stop
 HM9000.HM9000.StartMissing           | Increments each time HM9000 starts an instance that is missing
 HM9000.HM9000.StopDuplicate          | Increments each time a stop is scheduled for a running instance at a duplicated index
 HM9000.HM9000.StopEvacuationComplete | Increments each time HM9000 is done evacuating an instance and stops the instance

[Top](#metrics-by-component)

# Doppler

 Metric Name                                                              | Description
--------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------
 DopplerServer.dropsondeListener.currentBufferCount                       | Instantaneous number of messages read by UDP socket but not yet unmarshalled
 DopplerServer.dropsondeListener.receivedByteCount                        | Lifetime number of bytes read by UDP socket
 DopplerServer.dropsondeListener.receivedMessageCount                     | Lifetime number of messages read by UDP socket
 DopplerServer.dropsondeUnmarshaller.containerMetricReceived              | Lifetime number of ContainerMetric messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.counterEventReceived                 | Lifetime number of CounterEvent messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.errorReceived                        | Lifetime number of Error messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.heartbeatReceived                    | Lifetime number of Heartbeat messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.httpStartReceived                    | Lifetime number of HttpStart messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.httpStartStopReceived                | Lifetime number of HttpStartStop messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.httpStopReceived                     | Lifetime number of HttpStop messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.logMessageTotal                      | Lifetime number of LogMessage messages unmarshalled
 DopplerServer.dropsondeUnmarshaller.unmarshalErrors                      | Lifetime number of errors when unmarshalling messages
 DopplerServer.dropsondeUnmarshaller.valueMetricReceived                  | Lifetime number of ValueMetric messages unmarshalled
 DopplerServer.httpServer.receivedMessages                                | Number of messages received by Doppler's internal MessageRouter
 DopplerServer.memoryStats.lastGCPauseTimeNS                              | Duration of the last Garbage Collector pause in nanoseconds
 DopplerServer.memoryStats.numBytesAllocated                              | Instantaneous count of bytes allocated and still in use
 DopplerServer.memoryStats.numBytesAllocatedHeap                          | Instantaneous count of bytes allocated on the main heap and still in use
 DopplerServer.memoryStats.numBytesAllocatedStack                         | Instantaneous count of bytes used by the stack allocator
 DopplerServer.memoryStats.numFrees                                       | Lifetime number of memory deallocations
 DopplerServer.memoryStats.numMallocs                                     | Lifetime number of memory allocations
 DopplerServer.messageRouter.numberOfDumpSinks                            | Instantaneous number of dump sinks known to the SinkManager
 DopplerServer.messageRouter.numberOfFirehoseSinks                        | Instantaneous number of firehose sinks known to the SinkManager
 DopplerServer.messageRouter.numberOfSyslogSinks                          | Instantaneous number of syslog sinks known to the SinkManager
 DopplerServer.messageRouter.numberOfWebsocketSinks                       | Instantaneous number of websocket sinks known to the SinkManager
 DopplerServer.messageRouter.totalDroppedMessages                         | Lifetime number of messages dropped inside Doppler for various reasons (downstream consumer can't keep up internal object wasn't ready for message, etc.)
 DopplerServer.numCpus                                                    | Number of CPUs on the machine
 DopplerServer.numGoRoutines                                              | Instantaneous number of active Goroutines in the Doppler process
 DopplerServer.signatureVerifier.invalidSignatureErrors                   | Lifetime number of messages received with an invalid signature
 DopplerServer.signatureVerifier.missingSignatureErrors                   | Lifetime number of messages received that are too small to contain a signature
 DopplerServer.signatureVerifier.validSignatures                          | Lifetime number of messages received with valid signatures

[Top](#metrics-by-component)

# Traffic-Controller

 Metric Name                                                     | Description
-----------------------------------------------------------------|--------------------------------------------------------------------------
 LoggregatorTrafficController.memoryStats.lastGCPauseTimeNS      | Duration of the last Garbage Collector pause in nanoseconds
 LoggregatorTrafficController.memoryStats.numBytesAllocated      | Instantaneous count of bytes allocated and still in use
 LoggregatorTrafficController.memoryStats.numBytesAllocatedHeap  | Instantaneous count of bytes allocated on the main heap and still in use
 LoggregatorTrafficController.memoryStats.numBytesAllocatedStack | Instantaneous count of bytes used by the stack allocator
 LoggregatorTrafficController.memoryStats.numFrees               | Lifetime number of memory deallocations
 LoggregatorTrafficController.memoryStats.numMallocs             | Lifetime number of memory allocations
 LoggregatorTrafficController.numCPUS                            | Number of CPUs on the machine
 LoggregatorTrafficController.numGoRoutines                      | Instantaneous number of active Goroutines in the Doppler process

[Top](#metrics-by-component)

# Syslog Drain Binder

 Metric Name                                            | Description
--------------------------------------------------------|---------------------------------------------------------------------------------------------------
 syslog_drain_binder.memoryStats.lastGCPauseTimeNS      | Duration of the last Garbage Collector pause in nanoseconds
 syslog_drain_binder.memoryStats.numBytesAllocated      | Instantaneous count of bytes allocated and still in use
 syslog_drain_binder.memoryStats.numBytesAllocatedHeap  | Instantaneous count of bytes allocated on the main heap and still in use
 syslog_drain_binder.memoryStats.numBytesAllocatedStack | Instantaneous count of bytes used by the stack allocator
 syslog_drain_binder.memoryStats.numFrees               | Lifetime number of memory deallocations
 syslog_drain_binder.memoryStats.numMallocs             | Lifetime number of memory allocations
 syslog_drain_binder.numCPUS                            | Number of CPUs on the machine
 syslog_drain_binder.numGoRoutines                      | Instantaneous number of active Goroutines in the Doppler process
 syslog_drain_binder.pollCount                          | Number of times the syslog drain binder has polled the cloud controller for syslog drain bindings
 syslog_drain_binder.totalDrains                        | Number of syslog drains returned by cloud controller

[Top](#metrics-by-component)

# DEA Logging Agent

 Metric Name                                          | Description
------------------------------------------------------|--------------------------------------------------------------------------
 dea_logging_agent.memoryStats.lastGCPauseTimeNS      | Duration of the last Garbage Collector pause in nanoseconds
 dea_logging_agent.memoryStats.numBytesAllocated      | Instantaneous count of bytes allocated and still in use
 dea_logging_agent.memoryStats.numBytesAllocatedHeap  | Instantaneous count of bytes allocated on the main heap and still in use
 dea_logging_agent.memoryStats.numBytesAllocatedStack | Instantaneous count of bytes used by the stack allocator
 dea_logging_agent.memoryStats.numFrees               | Lifetime number of memory deallocations
 dea_logging_agent.memoryStats.numMallocs             | Lifetime number of memory allocations
 dea_logging_agent.numCPUS                            | Number of CPUs on the machine
 dea_logging_agent.numGoRoutines                      | Instantaneous number of active Goroutines in the Doppler process
 dea_logging_agent.totalApps                          | The number of applications which the DEA logging agent is hooked onto

[Top](#metrics-by-component)

# Metron Agent

 Metric Name                                   | Description
-----------------------------------------------|----------------------------------------------------------------------------------------------------------------
 MessageAggregator.counterEventReceived        | Lifetime number of CounterEvents aggregated in Metron
 MessageAggregator.httpStartReceived           | Lifetime number of HTTPStart aggregated in Metron
 MessageAggregator.httpStartStopEmitted        | Lifetime number of HTTPStartStop events emitted by Metron (created by combining HTTPStart and HTTPStop events)
 MessageAggregator.httpStopReceived            | Lifetime number of HTTPStop aggregated in Metron
 MessageAggregator.httpUnmatchedStartReceived  | Lifetime number of HTTPStart events for which no HTTPStop was received
 MessageAggregator.httpUnmatchedStopReceived   | Lifetime number of HTTPStop events for which no HTTPStart was received
 MessageAggregator.uncategorizedEvents         | Lifetime number of non-(CounterEvent  HTTPStart HTTPStop) events processed by aggregator
 dropsondeAgentListener.currentBufferCount     | Instantaneous number of Dropsonde messages read by UDP socket  but not yet unmarshalled
 dropsondeAgentListener.receivedByteCount      | Lifetime number of bytes of Dropsonde messages read by UDP socket
 dropsondeAgentListener.receivedMessageCount   | Lifetime number of Dropsonde messages read by UDP socket
 dropsondeMarshaller.containerMetricMarshalled | Lifetime number of ContainerMetric messages marshalled
 dropsondeMarshaller.counterEventMarshalled    | Lifetime number of CounterEvent messages marshalled
 dropsondeMarshaller.errorMarshalled           | Lifetime number of Error messages marshalled
 dropsondeMarshaller.heartbeatMarshalled       | Lifetime number of Heartbeat messages marshalled
 dropsondeMarshaller.httpStartMarshalled       | Lifetime number of HttpStart messages marshalled
 dropsondeMarshaller.httpStartStopMarshalled   | Lifetime number of HttpStartStop messages marshalled
 dropsondeMarshaller.httpStopMarshalled        | Lifetime number of HttpStop messages marshalled
 dropsondeMarshaller.logMessageMarshalled      | Lifetime number of LogMessage messages marshalled
 dropsondeMarshaller.marshalErrors             | Lifetime number of errors when marshalling messages
 dropsondeMarshaller.valueMetricMarshalled     | Lifetime number of ValueMetric messages marshalled
 dropsondeUnmarshaller.containerMetricReceived | Lifetime number of ContainerMetric messages unmarshalled
 dropsondeUnmarshaller.counterEventReceived    | Lifetime number of CounterEvent messages unmarshalled
 dropsondeUnmarshaller.errorReceived           | Lifetime number of Error messages unmarshalled
 dropsondeUnmarshaller.heartbeatReceived       | Lifetime number of Heartbeat messages unmarshalled
 dropsondeUnmarshaller.httpStartReceived       | Lifetime number of HttpStart messages unmarshalled
 dropsondeUnmarshaller.httpStartStopReceived   | Lifetime number of HttpStartStop messages unmarshalled
 dropsondeUnmarshaller.httpStopReceived        | Lifetime number of HttpStop messages unmarshalled
 dropsondeUnmarshaller.logMessageTotal         | Lifetime number of LogMessage messages unmarshalled
 dropsondeUnmarshaller.unmarshalErrors         | Lifetime number of errors when unmarshalling messages
 dropsondeUnmarshaller.valueMetricReceived     | Lifetime number of ValueMetric messages unmarshalled
 legacyAgentListener.currentBufferCount        | Instantaneous number of Legacy messages read by UDP socket but not yet unmarshalled
 legacyAgentListener.receivedByteCount         | Lifetime number of bytes of Legacy messages read by UDP socket
 legacyAgentListener.receivedMessageCount      | Lifetime number of Legacy messages read by UDP socket
 memoryStats.lastGCPauseTimeNS                 | Duration of the last Garbage Collector pause in nanoseconds
 memoryStats.numBytesAllocated                 | Instantaneous count of bytes allocated and still in use
 memoryStats.numBytesAllocatedHeap             | Instantaneous count of bytes allocated on the main heap and still in use
 memoryStats.numBytesAllocatedStack            | Instantaneous count of bytes used by the stack allocator
 memoryStats.numFrees                          | Lifetime number of memory deallocations
 memoryStats.numMallocs                        | Lifetime number of memory allocations
 numCpus                                       | Number of CPUs on the machine
 numGoRoutines                                 | Instantaneous number of active Goroutines in the Doppler process

[Top](#metrics-by-component)

# Diego

 Metric Name                                                 | Description
-------------------------------------------------------------|----------------------------------------------------------------------------------------------
 auctioneer.AuctioneerFetchStatesDuration                    |
 auctioneer.AuctioneerLRPAuctionsFailed                      |
 auctioneer.AuctioneerLRPAuctionsStarted                     |
 auctioneer.AuctioneerTaskAuctionsFailed                     |
 auctioneer.AuctioneerTaskAuctionsStarted                    |
 auctioneer.memoryStats.lastGCPauseTimeNS                    | Duration of the last Garbage Collector pause in nanoseconds
 auctioneer.memoryStats.numBytesAllocated                    | Instantaneous count of bytes allocated and still in use
 auctioneer.memoryStats.numBytesAllocatedHeap                | Instantaneous count of bytes allocated on the main heap and still in use
 auctioneer.memoryStats.numBytesAllocatedStack               | Instantaneous count of bytes used by the stack allocator
 auctioneer.memoryStats.numFrees                             | Lifetime number of memory deallocations
 auctioneer.memoryStats.numMallocs                           | Lifetime number of memory allocations
 auctioneer.numCPUS                                          | Number of CPUs on the machine
 auctioneer.numGoRoutines                                    | Instantaneous number of active Goroutines in the process
 bbs.memoryStats.lastGCPauseTimeNS                           | Duration of the last Garbage Collector pause in nanoseconds
 bbs.memoryStats.numBytesAllocated                           | Instantaneous count of bytes allocated and still in use
 bbs.memoryStats.numBytesAllocatedHeap                       | Instantaneous count of bytes allocated on the main heap and still in use
 bbs.memoryStats.numBytesAllocatedStack                      | Instantaneous count of bytes used by the stack allocator
 bbs.memoryStats.numFrees                                    | Lifetime number of memory deallocations
 bbs.memoryStats.numMallocs                                  | Lifetime number of memory allocations
 bbs.numCPUS                                                 | Number of CPUs on the machine
 bbs.numGoRoutines                                           | Instantaneous number of active Goroutines in the process
 cc_uploader.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 cc_uploader.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 cc_uploader.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 cc_uploader.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 cc_uploader.memoryStats.numFrees                            | Lifetime number of memory deallocations
 cc_uploader.memoryStats.numMallocs                          | Lifetime number of memory allocations
 cc_uploader.numCPUS                                         | Number of CPUs on the machine
 cc_uploader.numGoRoutines                                   | Instantaneous number of active Goroutines in the process
 converger.ConvergenceLRPDuration                            |
 converger.ConvergenceLRPPreProcessingActualLRPsDeleted      |
 converger.ConvergenceLRPPreProcessingDesiredLRPsDeleted     |
 converger.ConvergenceLRPRuns                                |
 converger.ConvergenceTaskDuration                           |
 converger.ConvergenceTaskRuns                               |
 converger.ConvergenceTasksKicked                            |
 converger.ConvergenceTasksPruned                            |
 converger.memoryStats.lastGCPauseTimeNS                     | Duration of the last Garbage Collector pause in nanoseconds
 converger.memoryStats.numBytesAllocated                     | Instantaneous count of bytes allocated and still in use
 converger.memoryStats.numBytesAllocatedHeap                 | Instantaneous count of bytes allocated on the main heap and still in use
 converger.memoryStats.numBytesAllocatedStack                | Instantaneous count of bytes used by the stack allocator
 converger.memoryStats.numFrees                              | Lifetime number of memory deallocations
 converger.memoryStats.numMallocs                            | Lifetime number of memory allocations
 converger.numCPUS                                           | Number of CPUs on the machine
 converger.numGoRoutines                                     | Instantaneous number of active Goroutines in the process
 file_server.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 file_server.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 file_server.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 file_server.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 file_server.memoryStats.numFrees                            | Lifetime number of memory deallocations
 file_server.memoryStats.numMallocs                          | Lifetime number of memory allocations
 file_server.numCPUS                                         | Number of CPUs on the machine
 file_server.numGoRoutines                                   | Instantaneous number of active Goroutines in the process
 garden_linux.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 garden_linux.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 garden_linux.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 garden_linux.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 garden_linux.memoryStats.numFrees                           | Lifetime number of memory deallocations
 garden_linux.memoryStats.numMallocs                         | Lifetime number of memory allocations
 garden_linux.numCPUS                                        | Number of CPUs on the machine
 garden_linux.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 nsync_bulker.DesiredLRPSyncDuration                         |
 nsync_bulker.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 nsync_bulker.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 nsync_bulker.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 nsync_bulker.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 nsync_bulker.memoryStats.numFrees                           | Lifetime number of memory deallocations
 nsync_bulker.memoryStats.numMallocs                         | Lifetime number of memory allocations
 nsync_bulker.numCPUS                                        | Number of CPUs on the machine
 nsync_bulker.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 nsync_listener.LRPsDesired                                  |
 nsync_listener.memoryStats.lastGCPauseTimeNS                | Duration of the last Garbage Collector pause in nanoseconds
 nsync_listener.memoryStats.numBytesAllocated                | Instantaneous count of bytes allocated and still in use
 nsync_listener.memoryStats.numBytesAllocatedHeap            | Instantaneous count of bytes allocated on the main heap and still in use
 nsync_listener.memoryStats.numBytesAllocatedStack           | Instantaneous count of bytes used by the stack allocator
 nsync_listener.memoryStats.numFrees                         | Lifetime number of memory deallocations
 nsync_listener.memoryStats.numMallocs                       | Lifetime number of memory allocations
 nsync_listener.numCPUS                                      | Number of CPUs on the machine
 nsync_listener.numGoRoutines                                | Instantaneous number of active Goroutines in the process
 receptor.memoryStats.lastGCPauseTimeNS                      | Duration of the last Garbage Collector pause in nanoseconds
 receptor.memoryStats.numBytesAllocated                      | Instantaneous count of bytes allocated and still in use
 receptor.memoryStats.numBytesAllocatedHeap                  | Instantaneous count of bytes allocated on the main heap and still in use
 receptor.memoryStats.numBytesAllocatedStack                 | Instantaneous count of bytes used by the stack allocator
 receptor.memoryStats.numFrees                               | Lifetime number of memory deallocations
 receptor.memoryStats.numMallocs                             | Lifetime number of memory allocations
 receptor.numCPUS                                            | Number of CPUs on the machine
 receptor.numGoRoutines                                      | Instantaneous number of active Goroutines in the process
 rep.CapacityRemainingContainers                             |
 rep.CapacityRemainingDisk                                   |
 rep.CapacityRemainingMemory                                 |
 rep.CapacityTotalContainers                                 |
 rep.CapacityTotalDisk                                       |
 rep.CapacityTotalMemory                                     |
 rep.ContainerCount                                          |
 rep.memoryStats.lastGCPauseTimeNS                           | Duration of the last Garbage Collector pause in nanoseconds
 rep.memoryStats.numBytesAllocated                           | Instantaneous count of bytes allocated and still in use
 rep.memoryStats.numBytesAllocatedHeap                       | Instantaneous count of bytes allocated on the main heap and still in use
 rep.memoryStats.numBytesAllocatedStack                      | Instantaneous count of bytes used by the stack allocator
 rep.memoryStats.numFrees                                    | Lifetime number of memory deallocations
 rep.memoryStats.numMallocs                                  | Lifetime number of memory allocations
 rep.numCPUS                                                 | Number of CPUs on the machine
 rep.numGoRoutines                                           | Instantaneous number of active Goroutines in the process
 rep.RepBulkSyncDuration                                     |
 route_emitter.memoryStats.lastGCPauseTimeNS                 | Duration of the last Garbage Collector pause in nanoseconds
 route_emitter.memoryStats.numBytesAllocated                 | Instantaneous count of bytes allocated and still in use
 route_emitter.memoryStats.numBytesAllocatedHeap             | Instantaneous count of bytes allocated on the main heap and still in use
 route_emitter.memoryStats.numBytesAllocatedStack            | Instantaneous count of bytes used by the stack allocator
 route_emitter.memoryStats.numFrees                          | Lifetime number of memory deallocations
 route_emitter.memoryStats.numMallocs                        | Lifetime number of memory allocations
 route_emitter.numCPUS                                       | Number of CPUs on the machine
 route_emitter.numGoRoutines                                 | Instantaneous number of active Goroutines in the process
 route_emitter.RouteEmitterSyncDuration                      |
 route_emitter.RoutesRegistered                              |
 route_emitter.RoutesSynced                                  |
 route_emitter.RoutesTotal                                   |
 route_emitter.RoutesUnregistered                            |
 runtime_metrics_server.CrashedActualLRPs                    |
 runtime_metrics_server.CrashingDesiredLRPs                  |
 runtime_metrics_server.Domain.cf_apps                       |
 runtime_metrics_server.ETCDLeader                           |
 runtime_metrics_server.ETCDRaftTerm                         |
 runtime_metrics_server.ETCDReceivedBandwidthRate            |
 runtime_metrics_server.ETCDReceivedRequestRate              |
 runtime_metrics_server.ETCDSentBandwidthRate                |
 runtime_metrics_server.ETCDSentRequestRate                  |
 runtime_metrics_server.ETCDWatchers                         |
 runtime_metrics_server.LRPsDesired                          |
 runtime_metrics_server.LRPsRunning                          |
 runtime_metrics_server.LRPsStarting                         |
 runtime_metrics_server.memoryStats.lastGCPauseTimeNS        | Duration of the last Garbage Collector pause in nanoseconds
 runtime_metrics_server.memoryStats.numBytesAllocated        | Instantaneous count of bytes allocated and still in use
 runtime_metrics_server.memoryStats.numBytesAllocatedHeap    | Instantaneous count of bytes allocated on the main heap and still in use
 runtime_metrics_server.memoryStats.numBytesAllocatedStack   | Instantaneous count of bytes used by the stack allocator
 runtime_metrics_server.memoryStats.numFrees                 | Lifetime number of memory deallocations
 runtime_metrics_server.memoryStats.numMallocs               | Lifetime number of memory allocations
 runtime_metrics_server.MetricsReportingDuration             |
 runtime_metrics_server.numCPUS                              | Number of CPUs on the machine
 runtime_metrics_server.numGoRoutines                        | Instantaneous number of active Goroutines in the process
 runtime_metrics_server.TasksCompleted                       |
 runtime_metrics_server.TasksPending                         |
 runtime_metrics_server.TasksResolving                       |
 runtime_metrics_server.TasksRunning                         |
 ssh_proxy.memoryStats.lastGCPauseTimeNS                     | Duration of the last Garbage Collector pause in nanoseconds
 ssh_proxy.memoryStats.numBytesAllocated                     | Instantaneous count of bytes allocated and still in use
 ssh_proxy.memoryStats.numBytesAllocatedHeap                 | Instantaneous count of bytes allocated on the main heap and still in use
 ssh_proxy.memoryStats.numBytesAllocatedStack                | Instantaneous count of bytes used by the stack allocator
 ssh_proxy.memoryStats.numFrees                              | Lifetime number of memory deallocations
 ssh_proxy.memoryStats.numMallocs                            | Lifetime number of memory allocations
 ssh_proxy.numCPUS                                           | Number of CPUs on the machine
 ssh_proxy.numGoRoutines                                     | Instantaneous number of active Goroutines in the process
 stager.memoryStats.lastGCPauseTimeNS                        | Duration of the last Garbage Collector pause in nanoseconds
 stager.memoryStats.numBytesAllocated                        | Instantaneous count of bytes allocated and still in use
 stager.memoryStats.numBytesAllocatedHeap                    | Instantaneous count of bytes allocated on the main heap and still in use
 stager.memoryStats.numBytesAllocatedStack                   | Instantaneous count of bytes used by the stack allocator
 stager.memoryStats.numFrees                                 | Lifetime number of memory deallocations
 stager.memoryStats.numMallocs                               | Lifetime number of memory allocations
 stager.numCPUS                                              | Number of CPUs on the machine
 stager.numGoRoutines                                        | Instantaneous number of active Goroutines in the process
 stager.StagingRequestFailedDuration                         |
 stager.StagingRequestsFailed                                |
 stager.StagingRequestsSucceeded                             |
 stager.StagingRequestSucceededDuration                      |
 stager.StagingStartRequestsReceived                         |
 tps_listener.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 tps_listener.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 tps_listener.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 tps_listener.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 tps_listener.memoryStats.numFrees                           | Lifetime number of memory deallocations
 tps_listener.memoryStats.numMallocs                         | Lifetime number of memory allocations
 tps_listener.numCPUS                                        | Number of CPUs on the machine
 tps_listener.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 tps_watcher.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 tps_watcher.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 tps_watcher.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 tps_watcher.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 tps_watcher.memoryStats.numFrees                            | Lifetime number of memory deallocations
 tps_watcher.memoryStats.numMallocs                          | Lifetime number of memory allocations
 tps_watcher.numCPUS                                         | Number of CPUs on the machine
 tps_watcher.numGoRoutines                                   | Instantaneous number of active Goroutines in the process