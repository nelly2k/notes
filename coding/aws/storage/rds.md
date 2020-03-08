
# Relational database service
- Managed database option  designed to replace on-prm dbs. 
- Best for structured, relational data store needs. 
- Automated backups, patching
- push button scaling, replicating and redundancy

OLTP - on-line transaction processing

- SQL
- Oracle
- MySQL
- PostgrePL
- Aurora - free tear is not available
- MariaDB

## Backups

- __Automated backups__ allow you to recover your database to any point in time within a "retention period". The retention period can be between one and 35 days. Automated backups will take a full daily snapshot and will also store transaction logs throughout the day, When you do a recovery, AWS will first choose the most recent daily backup, and then apply transaction logs relevant to that day. This allow you to do a point in time recovery down to a second, within the retention period. Backups are stored in S3. If you delete instance, backups are going to be deleted as well.

- __Snapshots__ are done manually. They are stored even after you delete the original RDS instant, unlike automated backups.

Both a restored to a new RDS instance with a new DNS endpoint.

## Encryption
At rest, uses KMS. Once your RDS is encrypted, the data stored at rest in the underlying storage is encrypted, as are its automated backups read replicas, and snapshots. At the present time, encrypting an existing db instances is not supported. To use Amazon RDS encryption for an existing database, you must first create a snapshot, make a copy of that snapshot and encrypt the copy.

## Multi-AZ
allows you to have an exact copy of your production db in another availability zone. AWS handles the replication for you, so when your production db is written to, this write will automatically be sync to the stand by db. 

In the event of planned db maintenance, db instance failure, or an AZ failure, RDS will automatically failover to the standby os that db operations can be resume quickly without administrative intervention. 

> Disaster recovery only.

## Read Replica
5 read replicas for production db by default.
allow you to have read-only copy of your production db. This is achieved by using Asynchronous replication from the primary RDS instance to the read replica. You use read replicas primarily for very read-heavy database workloads.

Available for:
- mySQL
- PostgreSQL
- MariaDB
- Aurora

> Uses for scaling

- must have automatic backups turn on
- you can have read replicas of read replicas
- each replica will have its own DNS end point
- you can have read replicas that have Multi-AZ
- you can create read replicas of Multi-AZ source databases
- can be promoted to be a database, but breaks replication 
- read replica can be in different AZ


# RDS Proxy
- lambda -> proxy -> rds
- pools and shares database connection
- preserves connection during DB failovers, lambda doesn't know connection is fail
- manage credentials (one less call from lambda), can grab from secrets
- fully managed


# Anti-patterns
- don't store binary objects, use S3
- Automated scalability, use DynamoDB
- Name/Value data structure, use DynamoDB or other NoSQL
- data not well structure, unpredictable, use DynamoDb
- other database platform, like IBM DB2 or SAP HANA, install it into EC2
- need complete control, use EC2 

# Scale
## Vertically (scale up)
- manually just select an instance size
- Storage and instance size is decoupled, so scaling an instance size doesn't affect storage.
- can select scale immediately, or schedule a maintenance window

## Horizontally
- for read-heave database, add read-replica 