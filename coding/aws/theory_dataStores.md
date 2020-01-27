# Data Store
- Persistent. Data is durable and sticks around after reboots. restarts. Glacier, RDS, DynamoDB
- Transient. Data temporary stored and passed along to another process. SQS, SNS
- Ephemeral. Data is lost when stopped. EC2 instance store, memcached


## IOPS vs Throughput
__IOPS__ Input/Output per second. Measure of how fast we can read nad write to a device.

__Throughput__ measure of how much data can be moved at a time

## Consistence models
__ACID__
- Atomic - all or nothing
- Consistent - transaction must be valid
- Isolated - transactions cannot mess with one another
- Durable - completed transaction must stick around

__BASE__ 
- Basic Availability - values available event if stale
- Soft-state - might not be instantly consistent across stores
- Eventual Consistency - will achieve consistence at some point