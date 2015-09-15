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
vcap\_sinatra.requests.outstanding                             | Number of requests currently being processed
vcap\_sinatra.requests.completed                               | Number of requests that have been completed
vcap\_sinatra.http\_status.[status\_code]                        | Metrics on number of http response codes for all requests
vcap\_sinatra.recent\_errors                                    | 50 most recent errors
log\_counts.[severity]                                         | Metrics for number of log messages of various severity
cc\_user\_count                                                 | "Total number of users ever created (includes inactive users).  Note: this field is updated at least every 10 minutes."
cc\_job\_queue\_length.[queue\_type]                              | "Number of delayed\_jobs that have yet to run for the first time. Note: this field is updated at least once every 30 seconds"
cc\_job\_queue\_length.total                                     | Total number of delayed\_jobs that have yet to run for the first time
thread\_info.[rest bellow here]                                | Note: these fields are updated at least once every 30 seconds
thread\_info.thread\_count                                      | Total number of threads that are either runnable or stopped
thread\_info.event\_machine.connection\_count                    | Number of open connections to event machine
thread\_info.event\_machine.threadqueue.size                    | Number of unscheduled tasks in the threadqueue
thread\_info.event\_machine.threadqueue.num\_waiting             | Number of scheduled tasks in the threadqueue
thread\_info.event\_machine.resultqueue.size                    | Number of unscheduled tasks in the result
thread\_info.event\_machine.resultqueue.num\_waiting             | Number of scheduled tasks in the result
cc\_failed\_job\_count.[queue\_type]                              | "Number of failed jobs sorted by queue type. Updated once every 30 seconds. Note: this is unrelated to the worker
cc\_failed\_job\_count.total                                     | Total number of failed jobs
uptime\_in\_seconds                                             | "The uptime of the process
uptime                                                        | "The uptime of the process
mem\_bytes                                                     | RSS bytes calculated by the OS
mem\_used\_bytes                                                | total memory used according to the OS
mem\_free\_bytes                                                | total memory available according to the OS
cpu\_load\_avg                                                  | system cpu load average over a minute according to the OS
cpu                                                           | the percent cpu usage by the process
num\_cores                                                     | number of CPUs of the host machine

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
 syslog\_drain\_binder.memoryStats.lastGCPauseTimeNS      | Duration of the last Garbage Collector pause in nanoseconds
 syslog\_drain\_binder.memoryStats.numBytesAllocated      | Instantaneous count of bytes allocated and still in use
 syslog\_drain\_binder.memoryStats.numBytesAllocatedHeap  | Instantaneous count of bytes allocated on the main heap and still in use
 syslog\_drain\_binder.memoryStats.numBytesAllocatedStack | Instantaneous count of bytes used by the stack allocator
 syslog\_drain\_binder.memoryStats.numFrees               | Lifetime number of memory deallocations
 syslog\_drain\_binder.memoryStats.numMallocs             | Lifetime number of memory allocations
 syslog\_drain\_binder.numCPUS                            | Number of CPUs on the machine
 syslog\_drain\_binder.numGoRoutines                      | Instantaneous number of active Goroutines in the Doppler process
 syslog\_drain\_binder.pollCount                          | Number of times the syslog drain binder has polled the cloud controller for syslog drain bindings
 syslog\_drain\_binder.totalDrains                        | Number of syslog drains returned by cloud controller

[Top](#metrics-by-component)

# DEA Logging Agent

 Metric Name                                          | Description
------------------------------------------------------|--------------------------------------------------------------------------
 dea\_logging\_agent.memoryStats.lastGCPauseTimeNS      | Duration of the last Garbage Collector pause in nanoseconds
 dea\_logging\_agent.memoryStats.numBytesAllocated      | Instantaneous count of bytes allocated and still in use
 dea\_logging\_agent.memoryStats.numBytesAllocatedHeap  | Instantaneous count of bytes allocated on the main heap and still in use
 dea\_logging\_agent.memoryStats.numBytesAllocatedStack | Instantaneous count of bytes used by the stack allocator
 dea\_logging\_agent.memoryStats.numFrees               | Lifetime number of memory deallocations
 dea\_logging\_agent.memoryStats.numMallocs             | Lifetime number of memory allocations
 dea\_logging\_agent.numCPUS                            | Number of CPUs on the machine
 dea\_logging\_agent.numGoRoutines                      | Instantaneous number of active Goroutines in the Doppler process
 dea\_logging\_agent.totalApps                          | The number of applications which the DEA logging agent is hooked onto

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
 cc\_uploader.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 cc\_uploader.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 cc\_uploader.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 cc\_uploader.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 cc\_uploader.memoryStats.numFrees                            | Lifetime number of memory deallocations
 cc\_uploader.memoryStats.numMallocs                          | Lifetime number of memory allocations
 cc\_uploader.numCPUS                                         | Number of CPUs on the machine
 cc\_uploader.numGoRoutines                                   | Instantaneous number of active Goroutines in the process
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
 file\_server.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 file\_server.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 file\_server.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 file\_server.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 file\_server.memoryStats.numFrees                            | Lifetime number of memory deallocations
 file\_server.memoryStats.numMallocs                          | Lifetime number of memory allocations
 file\_server.numCPUS                                         | Number of CPUs on the machine
 file\_server.numGoRoutines                                   | Instantaneous number of active Goroutines in the process
 garden\_linux.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 garden\_linux.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 garden\_linux.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 garden\_linux.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 garden\_linux.memoryStats.numFrees                           | Lifetime number of memory deallocations
 garden\_linux.memoryStats.numMallocs                         | Lifetime number of memory allocations
 garden\_linux.numCPUS                                        | Number of CPUs on the machine
 garden\_linux.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 nsync\_bulker.DesiredLRPSyncDuration                         |
 nsync\_bulker.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 nsync\_bulker.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 nsync\_bulker.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 nsync\_bulker.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 nsync\_bulker.memoryStats.numFrees                           | Lifetime number of memory deallocations
 nsync\_bulker.memoryStats.numMallocs                         | Lifetime number of memory allocations
 nsync\_bulker.numCPUS                                        | Number of CPUs on the machine
 nsync\_bulker.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 nsync\_listener.LRPsDesired                                  |
 nsync\_listener.memoryStats.lastGCPauseTimeNS                | Duration of the last Garbage Collector pause in nanoseconds
 nsync\_listener.memoryStats.numBytesAllocated                | Instantaneous count of bytes allocated and still in use
 nsync\_listener.memoryStats.numBytesAllocatedHeap            | Instantaneous count of bytes allocated on the main heap and still in use
 nsync\_listener.memoryStats.numBytesAllocatedStack           | Instantaneous count of bytes used by the stack allocator
 nsync\_listener.memoryStats.numFrees                         | Lifetime number of memory deallocations
 nsync\_listener.memoryStats.numMallocs                       | Lifetime number of memory allocations
 nsync\_listener.numCPUS                                      | Number of CPUs on the machine
 nsync\_listener.numGoRoutines                                | Instantaneous number of active Goroutines in the process
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
 route\_emitter.memoryStats.lastGCPauseTimeNS                 | Duration of the last Garbage Collector pause in nanoseconds
 route\_emitter.memoryStats.numBytesAllocated                 | Instantaneous count of bytes allocated and still in use
 route\_emitter.memoryStats.numBytesAllocatedHeap             | Instantaneous count of bytes allocated on the main heap and still in use
 route\_emitter.memoryStats.numBytesAllocatedStack            | Instantaneous count of bytes used by the stack allocator
 route\_emitter.memoryStats.numFrees                          | Lifetime number of memory deallocations
 route\_emitter.memoryStats.numMallocs                        | Lifetime number of memory allocations
 route\_emitter.numCPUS                                       | Number of CPUs on the machine
 route\_emitter.numGoRoutines                                 | Instantaneous number of active Goroutines in the process
 route\_emitter.RouteEmitterSyncDuration                      |
 route\_emitter.RoutesRegistered                              |
 route\_emitter.RoutesSynced                                  |
 route\_emitter.RoutesTotal                                   |
 route\_emitter.RoutesUnregistered                            |
 runtime\_metrics\_server.CrashedActualLRPs                    |
 runtime\_metrics\_server.CrashingDesiredLRPs                  |
 runtime\_metrics\_server.Domain.cf\_apps                       |
 runtime\_metrics\_server.ETCDLeader                           |
 runtime\_metrics\_server.ETCDRaftTerm                         |
 runtime\_metrics\_server.ETCDReceivedBandwidthRate            |
 runtime\_metrics\_server.ETCDReceivedRequestRate              |
 runtime\_metrics\_server.ETCDSentBandwidthRate                |
 runtime\_metrics\_server.ETCDSentRequestRate                  |
 runtime\_metrics\_server.ETCDWatchers                         |
 runtime\_metrics\_server.LRPsDesired                          |
 runtime\_metrics\_server.LRPsRunning                          |
 runtime\_metrics\_server.LRPsStarting                         |
 runtime\_metrics\_server.memoryStats.lastGCPauseTimeNS        | Duration of the last Garbage Collector pause in nanoseconds
 runtime\_metrics\_server.memoryStats.numBytesAllocated        | Instantaneous count of bytes allocated and still in use
 runtime\_metrics\_server.memoryStats.numBytesAllocatedHeap    | Instantaneous count of bytes allocated on the main heap and still in use
 runtime\_metrics\_server.memoryStats.numBytesAllocatedStack   | Instantaneous count of bytes used by the stack allocator
 runtime\_metrics\_server.memoryStats.numFrees                 | Lifetime number of memory deallocations
 runtime\_metrics\_server.memoryStats.numMallocs               | Lifetime number of memory allocations
 runtime\_metrics\_server.MetricsReportingDuration             |
 runtime\_metrics\_server.numCPUS                              | Number of CPUs on the machine
 runtime\_metrics\_server.numGoRoutines                        | Instantaneous number of active Goroutines in the process
 runtime\_metrics\_server.TasksCompleted                       |
 runtime\_metrics\_server.TasksPending                         |
 runtime\_metrics\_server.TasksResolving                       |
 runtime\_metrics\_server.TasksRunning                         |
 ssh\_proxy.memoryStats.lastGCPauseTimeNS                     | Duration of the last Garbage Collector pause in nanoseconds
 ssh\_proxy.memoryStats.numBytesAllocated                     | Instantaneous count of bytes allocated and still in use
 ssh\_proxy.memoryStats.numBytesAllocatedHeap                 | Instantaneous count of bytes allocated on the main heap and still in use
 ssh\_proxy.memoryStats.numBytesAllocatedStack                | Instantaneous count of bytes used by the stack allocator
 ssh\_proxy.memoryStats.numFrees                              | Lifetime number of memory deallocations
 ssh\_proxy.memoryStats.numMallocs                            | Lifetime number of memory allocations
 ssh\_proxy.numCPUS                                           | Number of CPUs on the machine
 ssh\_proxy.numGoRoutines                                     | Instantaneous number of active Goroutines in the process
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
 tps\_listener.memoryStats.lastGCPauseTimeNS                  | Duration of the last Garbage Collector pause in nanoseconds
 tps\_listener.memoryStats.numBytesAllocated                  | Instantaneous count of bytes allocated and still in use
 tps\_listener.memoryStats.numBytesAllocatedHeap              | Instantaneous count of bytes allocated on the main heap and still in use
 tps\_listener.memoryStats.numBytesAllocatedStack             | Instantaneous count of bytes used by the stack allocator
 tps\_listener.memoryStats.numFrees                           | Lifetime number of memory deallocations
 tps\_listener.memoryStats.numMallocs                         | Lifetime number of memory allocations
 tps\_listener.numCPUS                                        | Number of CPUs on the machine
 tps\_listener.numGoRoutines                                  | Instantaneous number of active Goroutines in the process
 tps\_watcher.memoryStats.lastGCPauseTimeNS                   | Duration of the last Garbage Collector pause in nanoseconds
 tps\_watcher.memoryStats.numBytesAllocated                   | Instantaneous count of bytes allocated and still in use
 tps\_watcher.memoryStats.numBytesAllocatedHeap               | Instantaneous count of bytes allocated on the main heap and still in use
 tps\_watcher.memoryStats.numBytesAllocatedStack              | Instantaneous count of bytes used by the stack allocator
 tps\_watcher.memoryStats.numFrees                            | Lifetime number of memory deallocations
 tps\_watcher.memoryStats.numMallocs                          | Lifetime number of memory allocations
 tps\_watcher.numCPUS                                         | Number of CPUs on the machine
 tps\_watcher.numGoRoutines                                   | Instantaneous number of active Goroutines in the process