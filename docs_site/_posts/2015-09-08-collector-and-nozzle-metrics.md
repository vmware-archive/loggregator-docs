---
layout: post
title:  "Collector and Nozzle Metrics"
date:   2015-09-08 14:34:50
---

# Collector and Nozzle Metrics

- [Collector Request Response Metrics](#collector-request-response-metrics)
- [Collector Metrics](#collector-metrics)
- [Common Metrics between Collector and Nozzles](#common-metrics-between-collector-and-nozzles)

# Collector Request Response Metrics

|  Component Name         | Metric Name                                                |
|-------------------------|------------------------------------------------------------| 
| CloudController         | api_z1_0.requestCount                                      | 
| CloudController         | api_z1_0.responseCount2XX                                  | 
| CloudController         | api_z2_0.requestCount                                      | 
| CloudController         | api_z2_0.responseCount2XX                                  | 
| Diego                   | auctioneer.requestCount                                    |
| Diego                   | auctioneer.responseCount2XX                                |
| Diego                   | bbs.requestCount                                           |
| Diego                   | bbs.responseCount2XX                                       |
| Diego                   | bbs.responseCount4XX                                       |
| Diego                   | bbs.responseCount5XX                                       |
| Diego                   | receptor.requestCount                                      |
| Diego                   | receptor.responseCount2XX                                  |
| Diego                   | receptor.responseCount4XX                                  |
| Diego                   | tps_listener.requestCount                                  |
| Diego                   | tps_listener.responseCount2XX                              |
| Router                  | router__0.requestCount                                     |
| Router                  | router__0.responseCount2XX                                 |
| Router                  | router__0.responseCount3XX                                 |
| Router                  | router__0.responseCount4XX                                 |
| Router                  | router__0.responseCount5XX                                 |


# Collector Metrics

| Component Name          | Metric Name                                                |
|-------------------------|------------------------------------------------------------|
| CloudController         | cc.http_status.1XX                                         |
| CloudController         | cc.uptime                                                  |
| DEA                     | available_disk_ratio                                       |
| DEA                     | available_memory_ratio                                     |
| DEA                     | can_stage                                                  |
| DEA                     | cpu_load_avg                                               |
| DEA                     | dea_registry_born                                          |
| DEA                     | dea_registry_crashed                                       |
| DEA                     | dea_registry_deleted                                       |
| DEA                     | dea_registry_disk_reserved                                 |
| DEA                     | dea_registry_evacuating                                    |
| DEA                     | dea_registry_mem_reserved                                  |
| DEA                     | dea_registry_resuming                                      |
| DEA                     | dea_registry_running                                       |
| DEA                     | dea_registry_starting                                      |
| DEA                     | dea_registry_stopped                                       |
| DEA                     | dea_registry_stopping                                      |
| DEA                     | total_warden_response_time_in_ms                           | 
| DEA                     | warden_error_response_count                                | 
| DEA                     | warden_request_count                                       | 
| DEA                     | mem_bytes                                                  | 
| DEA                     | mem_free_bytes                                             | 
| DEA                     | mem_used_bytes                                             | 
| DEA                     | reservable_stagers                                         | 
| DEA/Router              | log_count                                                  | 
| DEA/Router/CC           | uptime_in_seconds                                          |
| ETCD                    | etcd.leader.Followers                                      |
| ETCD                    | etcd.leader.Latency                                        |
| ETCD                    | etcd.server.IsLeader                                       |
| ETCD                    | etcd.server.ReceivedAppendRequests                         |
| ETCD                    | etcd.server.ReceivingBandwidthRate                         |
| ETCD                    | etcd.server.ReceivingRequestRate                           |
| ETCD                    | etcd.server.SendingBandwidthRate                           |
| ETCD                    | etcd.server.SendingRequestRate                             |
| ETCD                    | etcd.server.SentAppendRequests                             |
| ETCD                    | etcd.store.CompareAndDeleteFail                            |
| ETCD                    | etcd.store.CompareAndDeleteSuccess                         |
| ETCD                    | etcd.store.CompareAndSwapFail                              |
| ETCD                    | etcd.store.CompareAndSwapSuccess                           |
| ETCD                    | etcd.store.CreateFail                                      |
| ETCD                    | etcd.store.CreateSuccess                                   |
| ETCD                    | etcd.store.DeleteFail                                      |
| ETCD                    | etcd.store.DeleteSuccess                                   |
| ETCD                    | etcd.store.EtcdIndex                                       |
| ETCD                    | etcd.store.ExpireCount                                     |
| ETCD                    | etcd.store.GetsFail                                        |
| ETCD                    | etcd.store.GetsSuccess                                     |
| ETCD                    | etcd.store.RaftIndex                                       |
| ETCD                    | etcd.store.RaftTerm                                        |
| ETCD                    | etcd.store.SetsFail                                        |
| ETCD                    | etcd.store.SetsSuccess                                     |
| ETCD                    | etcd.store.UpdateFail                                      |
| ETCD                    | etcd.store.UpdateSuccess                                   |
| ETCD                    | etcd.store.Watchers                                        |
| CC/DEA/ETCD/HM9000/UAA/Metron/Router  | healthy                                      |
| HM9000                  | HM9000.HM9000.ActualStateListenerStoreUsagePercentage      |
| HM9000                  | HM9000.HM9000.DesiredStateSyncTimeInMilliseconds           |
| HM9000                  | HM9000.HM9000.NumberOfAppsWithAllInstancesReporting        |
| HM9000                  | HM9000.HM9000.NumberOfAppsWithMissingInstances             |
| HM9000                  | HM9000.HM9000.NumberOfCrashedIndices                       |
| HM9000                  | HM9000.HM9000.NumberOfCrashedInstances                     |
| HM9000                  | HM9000.HM9000.NumberOfDesiredApps                          |
| HM9000                  | HM9000.HM9000.NumberOfDesiredAppsPendingStaging            |
| HM9000                  | HM9000.HM9000.NumberOfDesiredInstances                     |
| HM9000                  | HM9000.HM9000.NumberOfMissingIndices                       |
| HM9000                  | HM9000.HM9000.NumberOfRunningInstances                     |
| HM9000                  | HM9000.HM9000.NumberOfUndesiredRunningApps                 |
| HM9000                  | HM9000.HM9000.ReceivedHeartbeats                           |
| HM9000                  | HM9000.HM9000.SavedHeartbeats                              |
| HM9000                  | HM9000.HM9000.StartCrashed                                 |
| HM9000                  | HM9000.HM9000.StartEvacuating                              |
| HM9000                  | HM9000.HM9000.StartMissing                                 |
| HM9000                  | HM9000.HM9000.StopDuplicate                                |
| HM9000                  | HM9000.HM9000.StopEvacuationComplete                       |
| HM9000                  | HM9000.HM9000.StopExtra                                    |
| HM9000                  | HM9000.memoryStats.lastGCPauseTimeNS                       |
| HM9000                  | HM9000.memoryStats.numBytesAllocated                       |
| HM9000                  | HM9000.memoryStats.numBytesAllocatedHeap                   |
| HM9000                  | HM9000.memoryStats.numBytesAllocatedStack                  |
| HM9000                  | HM9000.memoryStats.numFrees                                |
| HM9000                  | HM9000.memoryStats.numMallocs                              | 
| HM9000                  | HM9000.numCpus                                             | 
| HM9000                  | HM9000.numGoRoutines                                       | 
| NATS                    | nats.latency.1m                                            |
| Router                  | router.bad_gateways                                        | 
| Router                  | router.latency.1m                                          | 
| Router                  | router.ms_since_last_registry_update                       | 
| Router                  | router.rejected_requests                                   | 
| Router                  | router.requests_per_sec                                    | 
| Router                  | router.requests                                            | 
| Router                  | router.responses.2xx                                       | 
| Router                  | router.responses.3xx                                       | 
| Router                  | router.responses.4xx                                       | 
| Router                  | router.responses.5xx                                       | 
| Router                  | router.responses.xxx                                       | 
| Router                  | router.responses                                           | 
| Router                  | router.routed_app_requests                                 | 
| Router                  | router.total_requests                                      | 
| Router                  | router.total_routes                                        | 

# Common Metrics between Collector and Nozzles

|  Component Name         | Metric Name                                                 |
|-------------------------|-------------------------------------------------------------| 
|CloudController          | cc.failed_job_count.cc_api_z1_0                             |  
|CloudController          | cc.failed_job_count.cc_api_z1_1                             |  
|CloudController          | cc.failed_job_count.cc_api_z2_0                             |  
|CloudController          | cc.failed_job_count.cc_api_z2_1                             |  
|CloudController          | cc.failed_job_count.total                                   |  
|CloudController          | cc.http_status.2XX                                          |  
|CloudController          | cc.http_status.3XX                                          |  
|CloudController          | cc.http_status.4XX                                          |  
|CloudController          | cc.job_queue_length.cc_api_z1_0                             |  
|CloudController          | cc.job_queue_length.cc_api_z1_1                             |  
|CloudController          | cc.job_queue_length.cc_api_z2_0                             |  
|CloudController          | cc.job_queue_length.cc_api_z2_1                             |  
|CloudController          | cc.job_queue_length.cc_generic                              |  
|CloudController          | cc.job_queue_length.total                                   |  
|CloudController          | cc.requests.completed                                       |  
|CloudController          | cc.requests.outstanding                                     |  
|CloudController          | cc.thread_info.event_machine.connection_count               |  
|CloudController          | cc.thread_info.event_machine.resultqueue.num_waiting        |  
|CloudController          | cc.thread_info.event_machine.resultqueue.size               |  
|CloudController          | cc.thread_info.event_machine.threadqueue.num_waiting        |  
|CloudController          | cc.thread_info.event_machine.threadqueue.size               |  
|CloudController          | cc.thread_info.thread_count                                 |
|CloudController          | api_z1_0.logSenderTotalMessagesRead                         |  
|CloudController          | api_z1_0.memoryStats.lastGCPauseTimeNS                      |  
|CloudController          | api_z1_0.memoryStats.numBytesAllocated                      |  
|CloudController          | api_z1_0.memoryStats.numBytesAllocatedHeap                  |  
|CloudController          | api_z1_0.memoryStats.numBytesAllocatedStack                 |  
|CloudController          | api_z1_0.memoryStats.numFrees                               |  
|CloudController          | api_z1_0.memoryStats.numMallocs                             |  
|CloudController          | api_z1_0.numCPUS                                            |  
|CloudController          | api_z1_0.numGoRoutines                                      |  
|CloudController          | api_z1_1.logSenderTotalMessagesRead                         |  
|CloudController          | api_z1_1.memoryStats.lastGCPauseTimeNS                      |  
|CloudController          | api_z1_1.memoryStats.numBytesAllocated                      |  
|CloudController          | api_z1_1.memoryStats.numBytesAllocatedHeap                  |  
|CloudController          | api_z1_1.memoryStats.numBytesAllocatedStack                 |  
|CloudController          | api_z1_1.memoryStats.numFrees                               |  
|CloudController          | api_z1_1.memoryStats.numMallocs                             |  
|CloudController          | api_z1_1.numCPUS                                            |  
|CloudController          | api_z1_1.numGoRoutines                                      |  
|CloudController          | api_z2_0.logSenderTotalMessagesRead                         |  
|CloudController          | api_z2_0.memoryStats.lastGCPauseTimeNS                      |  
|CloudController          | api_z2_0.memoryStats.numBytesAllocated                      |  
|CloudController          | api_z2_0.memoryStats.numBytesAllocatedHeap                  |  
|CloudController          | api_z2_0.memoryStats.numBytesAllocatedStack                 |  
|CloudController          | api_z2_0.memoryStats.numFrees                               |  
|CloudController          | api_z2_0.memoryStats.numMallocs                             |  
|CloudController          | api_z2_0.numCPUS                                            |  
|CloudController          | api_z2_0.numGoRoutines                                      |  
|CloudController          | api_z2_1.logSenderTotalMessagesRead                         |  
|CloudController          | api_z2_1.memoryStats.lastGCPauseTimeNS                      |  
|CloudController          | api_z2_1.memoryStats.numBytesAllocated                      |  
|CloudController          | api_z2_1.memoryStats.numBytesAllocatedHeap                  |  
|CloudController          | api_z2_1.memoryStats.numBytesAllocatedStack                 |  
|CloudController          | api_z2_1.memoryStats.numFrees                               |  
|CloudController          | api_z2_1.memoryStats.numMallocs                             |  
|CloudController          | api_z2_1.numCPUS                                            |  
|CloudController          | api_z2_1.numGoRoutines                                      |   
|CloudController          | cc.failed_job_count.cc_api_z1_0                             |  
|CloudController          | cc.failed_job_count.cc_api_z1_1                             |  
|CloudController          | cc.failed_job_count.cc_api_z2_0                             |  
|CloudController          | cc.failed_job_count.cc_api_z2_1                             |  
|CloudController          | cc.failed_job_count.total                                   |  
|CloudController          | cc.http_status.2XX                                          |  
|CloudController          | cc.http_status.3XX                                          |  
|CloudController          | cc.http_status.4XX                                          |  
|CloudController          | cc.job_queue_length.cc_api_z1_0                             |  
|CloudController          | cc.job_queue_length.cc_api_z1_1                             |  
|CloudController          | cc.job_queue_length.cc_api_z2_0                             |  
|CloudController          | cc.job_queue_length.cc_api_z2_1                             |  
|CloudController          | cc.job_queue_length.cc_generic                              |  
|CloudController          | cc.job_queue_length.total                                   |  
|CloudController          | cc.log_count.all                                            |  
|CloudController          | cc.log_count.debug                                          |  
|CloudController          | cc.log_count.debug1                                         |  
|CloudController          | cc.log_count.debug2                                         |  
|CloudController          | cc.log_count.error                                          |  
|CloudController          | cc.log_count.fatal                                          |  
|CloudController          | cc.log_count.info                                           |  
|CloudController          | cc.log_count.off                                            |  
|CloudController          | cc.log_count.warn                                           |  
|CloudController          | cc.requests.completed                                       |  
|CloudController          | cc.requests.outstanding                                     |  
|CloudController          | cc.thread_info.event_machine.connection_count               |  
|CloudController          | cc.thread_info.event_machine.resultqueue.num_waiting        |  
|CloudController          | cc.thread_info.event_machine.resultqueue.size               |  
|CloudController          | cc.thread_info.event_machine.threadqueue.num_waiting        |  
|CloudController          | cc.thread_info.event_machine.threadqueue.size               |  
|CloudController          | cc.thread_info.thread_count                                 |  
|CloudController          | cc.total_users                                              |  
|CloudController          | cc.vitals.cpu_load_avg                                      |  
|CloudController          | cc.vitals.cpu                                               |  
|CloudController          | cc.vitals.mem_bytes                                         |  
|CloudController          | cc.vitals.mem_free_bytes                                    |  
|CloudController          | cc.vitals.mem_used_bytes                                    |  
|CloudController          | cc.vitals.num_cores                                         |  
|CloudController          | cc.vitals.uptime                                            |  
|DEA                      | dea_logging_agent.logSenderTotalMessagesRead                |  
|DEA                      | dea_logging_agent.memoryStats.lastGCPauseTimeNS             |  
|DEA                      | dea_logging_agent.memoryStats.numBytesAllocated             |  
|DEA                      | dea_logging_agent.memoryStats.numBytesAllocatedHeap         |  
|DEA                      | dea_logging_agent.memoryStats.numBytesAllocatedStack        |  
|DEA                      | dea_logging_agent.memoryStats.numFrees                      |  
|DEA                      | dea_logging_agent.memoryStats.numMallocs                    |  
|DEA                      | dea_logging_agent.numCPUS                                   |  
|DEA                      | dea_logging_agent.numGoRoutines                             |  
|DEA                      | dea_logging_agent.totalApps                                 |  
|Diego                    | auctioneer.AuctioneerFetchStatesDuration                    |  
|Diego                    | auctioneer.AuctioneerLRPAuctionsFailed                      |  
|Diego                    | auctioneer.AuctioneerLRPAuctionsStarted                     |  
|Diego                    | auctioneer.AuctioneerTaskAuctionsFailed                     |  
|Diego                    | auctioneer.AuctioneerTaskAuctionsStarted                    |  
|Diego                    | auctioneer.logSenderTotalMessagesRead                       |  
|Diego                    | auctioneer.memoryStats.lastGCPauseTimeNS                    |  
|Diego                    | auctioneer.memoryStats.numBytesAllocated                    |  
|Diego                    | auctioneer.memoryStats.numBytesAllocatedHeap                |  
|Diego                    | auctioneer.memoryStats.numBytesAllocatedStack               |  
|Diego                    | auctioneer.memoryStats.numFrees                             |  
|Diego                    | auctioneer.memoryStats.numMallocs                           |  
|Diego                    | auctioneer.numCPUS                                          |  
|Diego                    | auctioneer.numGoRoutines                                    |  
|Diego                    | bbs.logSenderTotalMessagesRead                              |  
|Diego                    | bbs.memoryStats.lastGCPauseTimeNS                           |  
|Diego                    | bbs.memoryStats.numBytesAllocated                           |  
|Diego                    | bbs.memoryStats.numBytesAllocatedHeap                       |  
|Diego                    | bbs.memoryStats.numBytesAllocatedStack                      |  
|Diego                    | bbs.memoryStats.numFrees                                    |  
|Diego                    | bbs.memoryStats.numMallocs                                  |  
|Diego                    | bbs.numCPUS                                                 |  
|Diego                    | bbs.numGoRoutines                                           |  
|Diego                    | cc_uploader.logSenderTotalMessagesRead                      |  
|Diego                    | cc_uploader.memoryStats.lastGCPauseTimeNS                   |  
|Diego                    | cc_uploader.memoryStats.numBytesAllocated                   |  
|Diego                    | cc_uploader.memoryStats.numBytesAllocatedHeap               |  
|Diego                    | cc_uploader.memoryStats.numBytesAllocatedStack              |  
|Diego                    | cc_uploader.memoryStats.numFrees                            |  
|Diego                    | cc_uploader.memoryStats.numMallocs                          |  
|Diego                    | cc_uploader.numCPUS                                         |  
|Diego                    | cc_uploader.numGoRoutines                                   |  
|Diego                    | converger.ConvergenceLRPDuration                            |  
|Diego                    | converger.ConvergenceLRPPreProcessingActualLRPsDeleted      |  
|Diego                    | converger.ConvergenceLRPPreProcessingDesiredLRPsDeleted     |  
|Diego                    | converger.ConvergenceLRPRuns                                |  
|Diego                    | converger.ConvergenceTaskDuration                           |  
|Diego                    | converger.ConvergenceTaskRuns                               |  
|Diego                    | converger.ConvergenceTasksKicked                            |  
|Diego                    | converger.ConvergenceTasksPruned                            |  
|Diego                    | converger.logSenderTotalMessagesRead                        |  
|Diego                    | converger.memoryStats.lastGCPauseTimeNS                     |  
|Diego                    | converger.memoryStats.numBytesAllocated                     |  
|Diego                    | converger.memoryStats.numBytesAllocatedHeap                 |  
|Diego                    | converger.memoryStats.numBytesAllocatedStack                |  
|Diego                    | converger.memoryStats.numFrees                              |  
|Diego                    | converger.memoryStats.numMallocs                            |  
|Diego                    | converger.numCPUS                                           |  
|Diego                    | converger.numGoRoutines                                     |  
|Diego                    | file_server.logSenderTotalMessagesRead                      |
|Diego                    | file_server.memoryStats.lastGCPauseTimeNS                   |
|Diego                    | file_server.memoryStats.numBytesAllocated                   |
|Diego                    | file_server.memoryStats.numBytesAllocatedHeap               |
|Diego                    | file_server.memoryStats.numBytesAllocatedStack              |
|Diego                    | file_server.memoryStats.numFrees                            |
|Diego                    | file_server.memoryStats.numMallocs                          |
|Diego                    | file_server.numCPUS                                         |
|Diego                    | file_server.numGoRoutines                                   |
|Diego                    | garden_linux.logSenderTotalMessagesRead                         |
|Diego                    | garden_linux.memoryStats.lastGCPauseTimeNS                      |
|Diego                    | garden_linux.memoryStats.numBytesAllocated                      |
|Diego                    | garden_linux.memoryStats.numBytesAllocatedHeap                  |
|Diego                    | garden_linux.memoryStats.numBytesAllocatedStack                 |
|Diego                    | garden_linux.memoryStats.numFrees                               |
|Diego                    | garden_linux.memoryStats.numMallocs                             |
|Diego                    | garden_linux.numCPUS                                            |
|Diego                    | garden_linux.numGoRoutines                                      |
|Diego                    | nsync_bulker.DesiredLRPSyncDuration                             |
|Diego                    | nsync_bulker.logSenderTotalMessagesRead                         |
|Diego                    | nsync_bulker.memoryStats.lastGCPauseTimeNS                      |
|Diego                    | nsync_bulker.memoryStats.numBytesAllocated                      |
|Diego                    | nsync_bulker.memoryStats.numBytesAllocatedHeap                  |
|Diego                    | nsync_bulker.memoryStats.numBytesAllocatedStack                 |
|Diego                    | nsync_bulker.memoryStats.numFrees                               |
|Diego                    | nsync_bulker.memoryStats.numMallocs                             |
|Diego                    | nsync_bulker.numCPUS                                            |
|Diego                    | nsync_bulker.numGoRoutines                                      |
|Diego                    | nsync_listener.logSenderTotalMessagesRead                       |
|Diego                    | nsync_listener.LRPsDesired                                      |
|Diego                    | nsync_listener.memoryStats.lastGCPauseTimeNS                    |
|Diego                    | nsync_listener.memoryStats.numBytesAllocated                    |
|Diego                    | nsync_listener.memoryStats.numBytesAllocatedHeap                |
|Diego                    | nsync_listener.memoryStats.numBytesAllocatedStack               |
|Diego                    | nsync_listener.memoryStats.numFrees                             |
|Diego                    | nsync_listener.memoryStats.numMallocs                           |
|Diego                    | nsync_listener.numCPUS                                          |
|Diego                    | nsync_listener.numGoRoutines                                    |
|Diego                    | receptor.logSenderTotalMessagesRead                             |
|Diego                    | receptor.memoryStats.lastGCPauseTimeNS                          |
|Diego                    | receptor.memoryStats.numBytesAllocated                          |
|Diego                    | receptor.memoryStats.numBytesAllocatedHeap                      |
|Diego                    | receptor.memoryStats.numBytesAllocatedStack                     |
|Diego                    | receptor.memoryStats.numFrees                                   |
|Diego                    | receptor.memoryStats.numMallocs                                 |
|Diego                    | receptor.numCPUS                                                |
|Diego                    | receptor.numGoRoutines                                          |
|Diego                    | rep.CapacityRemainingContainers                                 |
|Diego                    | rep.CapacityRemainingDisk                                       |
|Diego                    | rep.CapacityRemainingMemory                                     |
|Diego                    | rep.CapacityTotalContainers                                     |
|Diego                    | rep.CapacityTotalDisk                                           |
|Diego                    | rep.CapacityTotalMemory                                         |
|Diego                    | rep.ContainerCount                                              |
|Diego                    | rep.logSenderTotalMessagesRead                                  |
|Diego                    | rep.memoryStats.lastGCPauseTimeNS                               |
|Diego                    | rep.memoryStats.numBytesAllocated                               |
|Diego                    | rep.memoryStats.numBytesAllocatedHeap                           |
|Diego                    | rep.memoryStats.numBytesAllocatedStack                          |
|Diego                    | rep.memoryStats.numFrees                                        |
|Diego                    | rep.memoryStats.numMallocs                                      |
|Diego                    | rep.numCPUS                                                     |
|Diego                    | rep.numGoRoutines                                               |
|Diego                    | rep.RepBulkSyncDuration                                         |
|Diego                    | route_emitter.logSenderTotalMessagesRead                        |
|Diego                    | route_emitter.memoryStats.lastGCPauseTimeNS                     |
|Diego                    | route_emitter.memoryStats.numBytesAllocated                     |
|Diego                    | route_emitter.memoryStats.numBytesAllocatedHeap                 |
|Diego                    | route_emitter.memoryStats.numBytesAllocatedStack                |
|Diego                    | route_emitter.memoryStats.numFrees                              |
|Diego                    | route_emitter.memoryStats.numMallocs                            |
|Diego                    | route_emitter.numCPUS                                           |
|Diego                    | route_emitter.numGoRoutines                                     |
|Diego                    | route_emitter.RouteEmitterSyncDuration                          |
|Diego                    | route_emitter.RoutesRegistered                                  |
|Diego                    | route_emitter.RoutesSynced                                      |
|Diego                    | route_emitter.RoutesTotal                                       |
|Diego                    | route_emitter.RoutesUnregistered                                |
|Diego                    | runtime_metrics_server.CrashedActualLRPs                        |
|Diego                    | runtime_metrics_server.CrashingDesiredLRPs                      |
|Diego                    | runtime_metrics_server.Domain.cf_apps                           |
|Diego                    | runtime_metrics_server.ETCDLeader                               |
|Diego                    | runtime_metrics_server.ETCDRaftTerm                             |
|Diego                    | runtime_metrics_server.ETCDReceivedBandwidthRate                |
|Diego                    | runtime_metrics_server.ETCDReceivedRequestRate                  |
|Diego                    | runtime_metrics_server.ETCDSentBandwidthRate                    |
|Diego                    | runtime_metrics_server.ETCDSentRequestRate                      |
|Diego                    | runtime_metrics_server.ETCDWatchers                             |
|Diego                    | runtime_metrics_server.logSenderTotalMessagesRead               |
|Diego                    | runtime_metrics_server.LRPsDesired                              |
|Diego                    | runtime_metrics_server.LRPsRunning                              |
|Diego                    | runtime_metrics_server.LRPsStarting                             |
|Diego                    | runtime_metrics_server.memoryStats.lastGCPauseTimeNS            |
|Diego                    | runtime_metrics_server.memoryStats.numBytesAllocated            |
|Diego                    | runtime_metrics_server.memoryStats.numBytesAllocatedHeap        |
|Diego                    | runtime_metrics_server.memoryStats.numBytesAllocatedStack       |
|Diego                    | runtime_metrics_server.memoryStats.numFrees                     |
|Diego                    | runtime_metrics_server.memoryStats.numMallocs                   |
|Diego                    | runtime_metrics_server.MetricsReportingDuration                 |
|Diego                    | runtime_metrics_server.numCPUS                                  |
|Diego                    | runtime_metrics_server.numGoRoutines                            |
|Diego                    | runtime_metrics_server.TasksCompleted                           |
|Diego                    | runtime_metrics_server.TasksPending                             |
|Diego                    | runtime_metrics_server.TasksResolving                           |
|Diego                    | runtime_metrics_server.TasksRunning                             |
|Diego                    | ssh_proxy.logSenderTotalMessagesRead                            |
|Diego                    | ssh_proxy.memoryStats.lastGCPauseTimeNS                         |
|Diego                    | ssh_proxy.memoryStats.numBytesAllocated                         |
|Diego                    | ssh_proxy.memoryStats.numBytesAllocatedHeap                     |
|Diego                    | ssh_proxy.memoryStats.numBytesAllocatedStack                    |
|Diego                    | ssh_proxy.memoryStats.numFrees                                  |
|Diego                    | ssh_proxy.memoryStats.numMallocs                                |
|Diego                    | ssh_proxy.numCPUS                                               |
|Diego                    | ssh_proxy.numGoRoutines                                         |
|Diego                    | stager.logSenderTotalMessagesRead                               |
|Diego                    | stager.memoryStats.lastGCPauseTimeNS                            |
|Diego                    | stager.memoryStats.numBytesAllocated                            |
|Diego                    | stager.memoryStats.numBytesAllocatedHeap                        |
|Diego                    | stager.memoryStats.numBytesAllocatedStack                       |
|Diego                    | stager.memoryStats.numFrees                                     |
|Diego                    | stager.memoryStats.numMallocs                                   |
|Diego                    | stager.numCPUS                                                  |
|Diego                    | stager.numGoRoutines                                            |
|Diego                    | stager.StagingRequestFailedDuration                             |
|Diego                    | stager.StagingRequestsFailed                                    |
|Diego                    | stager.StagingRequestsSucceeded                                 |
|Diego                    | stager.StagingRequestSucceededDuration                          |
|Diego                    | stager.StagingStartRequestsReceived                             |
|Diego                    | tps_listener.logSenderTotalMessagesRead                         |
|Diego                    | tps_listener.memoryStats.lastGCPauseTimeNS                      |
|Diego                    | tps_listener.memoryStats.numBytesAllocated                      |
|Diego                    | tps_listener.memoryStats.numBytesAllocatedHeap                  |
|Diego                    | tps_listener.memoryStats.numBytesAllocatedStack                 |
|Diego                    | tps_listener.memoryStats.numFrees                               |
|Diego                    | tps_listener.memoryStats.numMallocs                             |
|Diego                    | tps_listener.numCPUS                                            |
|Diego                    | tps_listener.numGoRoutines                                      |
|Diego                    | tps_watcher.logSenderTotalMessagesRead                          |
|Diego                    | tps_watcher.memoryStats.lastGCPauseTimeNS                       |
|Diego                    | tps_watcher.memoryStats.numBytesAllocated                       |
|Diego                    | tps_watcher.memoryStats.numBytesAllocatedHeap                   |
|Diego                    | tps_watcher.memoryStats.numBytesAllocatedStack                  |
|Diego                    | tps_watcher.memoryStats.numFrees                                |
|Diego                    | tps_watcher.memoryStats.numMallocs                              |
|Diego                    | tps_watcher.numCPUS                                             |
|Diego                    | tps_watcher.numGoRoutines                                       |
|Loggregator              | MetronAgent.dropsondeAgentListener.receivedByteCount            |  
|Loggregator              | MetronAgent.dropsondeAgentListener.receivedMessageCount         |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.containerMetricReceived       |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.counterEventReceived          |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.httpStartReceived             |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.httpStopReceived              |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.logMessageTotal               |  
|Loggregator              | MetronAgent.DropsondeUnmarshaller.valueMetricReceived           |   
|Loggregator              | DopplerServer.dropsondeListener.receivedByteCount               |  
|Loggregator              | DopplerServer.dropsondeListener.receivedMessageCount            |  
|Loggregator              | DopplerServer.dropsondeUnmarshaller.containerMetricReceived     |  
|Loggregator              | DopplerServer.dropsondeUnmarshaller.counterEventReceived        |  
|Loggregator              | DopplerServer.dropsondeUnmarshaller.httpStartStopReceived       |  
|Loggregator              | DopplerServer.dropsondeUnmarshaller.logMessageTotal             |  
|Loggregator              | DopplerServer.dropsondeUnmarshaller.valueMetricReceived         |  
|Loggregator              | DopplerServer.httpServer.receivedMessages                       |  
|Loggregator              | DopplerServer.logSenderTotalMessagesRead                        |  
|Loggregator              | DopplerServer.memoryStats.lastGCPauseTimeNS                     |  
|Loggregator              | DopplerServer.memoryStats.numBytesAllocated                     |  
|Loggregator              | DopplerServer.memoryStats.numBytesAllocatedHeap                 |  
|Loggregator              | DopplerServer.memoryStats.numBytesAllocatedStack                |  
|Loggregator              | DopplerServer.memoryStats.numFrees                              |  
|Loggregator              | DopplerServer.memoryStats.numMallocs                            |  
|Loggregator              | DopplerServer.messageRouter.numberOfDumpSinks                   |  
|Loggregator              | DopplerServer.messageRouter.numberOfFirehoseSinks               |  
|Loggregator              | DopplerServer.messageRouter.numberOfSyslogSinks                 |  
|Loggregator              | DopplerServer.messageRouter.numberOfWebsocketSinks              |  
|Loggregator              | DopplerServer.numCPUS                                           |  
|Loggregator              | DopplerServer.numGoRoutines                                     |  
|Loggregator              | DopplerServer.signatureVerifier.validSignatures                 |  
|Loggregator              | DopplerServer.TruncatingBuffer.totalDroppedMessages             |  
|Loggregator              | DopplerServer.Uptime                                            |  
|Loggregator              | LoggregatorTrafficController.logSenderTotalMessagesRead         |
|Loggregator              | LoggregatorTrafficController.memoryStats.lastGCPauseTimeNS      |
|Loggregator              | LoggregatorTrafficController.memoryStats.numBytesAllocated      |
|Loggregator              | LoggregatorTrafficController.memoryStats.numBytesAllocatedHeap  |
|Loggregator              | LoggregatorTrafficController.memoryStats.numBytesAllocatedStack |
|Loggregator              | LoggregatorTrafficController.memoryStats.numFrees               |
|Loggregator              | LoggregatorTrafficController.memoryStats.numMallocs             |
|Loggregator              | LoggregatorTrafficController.numCPUS                            |
|Loggregator              | LoggregatorTrafficController.numGoRoutines                      |
|Loggregator              | LoggregatorTrafficController.Uptime                             |
|Loggregator              | syslog_drain_binder.logSenderTotalMessagesRead                  |
|Loggregator              | syslog_drain_binder.memoryStats.lastGCPauseTimeNS               |
|Loggregator              | syslog_drain_binder.memoryStats.numBytesAllocated               |
|Loggregator              | syslog_drain_binder.memoryStats.numBytesAllocatedHeap           |
|Loggregator              | syslog_drain_binder.memoryStats.numBytesAllocatedStack          |
|Loggregator              | syslog_drain_binder.memoryStats.numFrees                        |
|Loggregator              | syslog_drain_binder.memoryStats.numMallocs                      |
|Loggregator              | syslog_drain_binder.numCPUS                                     |
|Loggregator              | syslog_drain_binder.numGoRoutines                               |
|Loggregator              | syslog_drain_binder.pollCount                                   |
|Loggregator              | syslog_drain_binder.totalDrains                                 |
|Loggregator              | MetronAgent.legacyAgentListener.receivedByteCount               |
|Loggregator              | MetronAgent.legacyAgentListener.receivedMessageCount            |
|Loggregator              | MetronAgent.MessageAggregator.counterEventReceived              |
|Loggregator              | MetronAgent.MessageAggregator.httpStartReceived                 |
|Loggregator              | MetronAgent.MessageAggregator.httpStartStopEmitted              |
|Loggregator              | MetronAgent.MessageAggregator.httpStopReceived                  |
|Loggregator              | MetronAgent.MessageAggregator.httpUnmatchedStartReceived        |
|Loggregator              | MetronAgent.MessageAggregator.httpUnmatchedStopReceived         |
|Loggregator              | MetronAgent.MessageAggregator.uncategorizedEvents               |
|Router                   | router__0.logSenderTotalMessagesRead                            |
|Router                   | router__0.memoryStats.lastGCPauseTimeNS                         |
|Router                   | router__0.memoryStats.numBytesAllocated                         |
|Router                   | router__0.memoryStats.numBytesAllocatedHeap                     |
|Router                   | router__0.memoryStats.numBytesAllocatedStack                    |
|Router                   | router__0.memoryStats.numFrees                                  |
|Router                   | router__0.memoryStats.numMallocs                                |
|Router                   | router__0.numCPUS                                               |
|Router                   | router__0.numGoRoutines                                         |
|Router                   | routing_api.total_routes                                        |
|Router                   | routing_api.total_subscriptions                                 |
