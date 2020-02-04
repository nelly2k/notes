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


# DB Comparison
[Storage Services Whitepaper](https://d1.awsstatic.com/whitepapers/Storage/AWS%20Storage%20Services%20Whitepaper-v9.pdf)

[Multitenant Storage strategies](https://d1.awsstatic.com/whitepapers/Multi_Tenant_SaaS_Storage_Strategies.pdf)

[Elasticache performance](https://d1.awsstatic.com/whitepapers/Multi_Tenant_SaaS_Storage_Strategies.pdf)

- EC2 - ultimate control, db not available as managed
- RDS - traditional relational db, well-formed data
- DynamoDb - name/value pair or unpredictable structure, in-memory performance with persistance. High I/O, scale dynamically
- Redshift - massive amount of data, OLAP
- Neptune - relationship between objects a major portion of data value. Graph DB
- Elasticache - fast temporary storage for small amount of data, highly volatile data
 - S3 - blobs