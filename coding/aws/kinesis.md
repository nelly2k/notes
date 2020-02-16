# Kinesis
is a platform on AWS to send your streaming data too. Kinesis makes it easy to load and analyse streaming data, and also providing the ability for you to build your own custom applications.


- video streams. securely stream video from connected devices to AWS for analytics and machine learning
- data streams - build custom applications process data in real-time
- Firehose - capture, transform, load data streams into AWS data stores for near rel-time analytics with BI tools.


You can configure lambda to subscribe to a Kinesis stream and execute a function on your behalf when a new record is detected, before sending the processed data on to its final destination.

__Streaming Data__ is data that is generated continuously by thousands of data sources, which typically send in the data records simultaneously, and in small sizes (order by kilobytes)
- online purchases
- stock prices
- game data
- social network data
- geospatial data
- IoT sensor data

## Kinesis Streams
- by default sores for 24 h, but can be increased to 7 days
- data stored in _Shards_
- data consumers (EC2) instances grabs data from Shards and convert to something useful. Sentiment analysis, predict stock market. 
- Shard  - 5 transactions per second for reads, up to 2Mb and up to 1000 records per second to write - 1Mb. 
 - Records consists of Partition Key, Sequence Number and Data Blob

## Kinesis Firehose
- no shards
- no worries about data consumers
- no retention period

## Analytics
Can run SQL query

> When resharding increases the number of shards in the stream, the corresponding increase in the number of record processors increases the load on the EC2 instances that are hosting them. If the instances are part of an Auto Scaling group, and the load increases sufficiently, the Auto Scaling group adds more instances to handle the increased load. You should configure Auto Scaling to automatically scale your instances based on appropriate metrics, e.g. CPU utilization.

## Interactions
Data can be read using API or KCL Kinesis Client Library - recommended. Kinesis Producer Library allow writing to Kinesis Streams and not reading. 