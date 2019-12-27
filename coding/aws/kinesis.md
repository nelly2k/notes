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