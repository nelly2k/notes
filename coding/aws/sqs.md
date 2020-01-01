# Simple Queueing Service
Access to queues, that allow you to store messages while waiting for a computer to process them. Is a temporary repository for messages that awaiting execution.
Messages can contain up to __256KB__ or text. Any component can retrieve message using Amazon SQS API.

Messages can be up to 2Gb and stored in S3.

This queue is resolve situation that arise if the producer is producing work faster than consumer can consume, or consumer intermittently connected to a network.

Messages can be kept in queue from 1 minute to 14 days. The default retention period is 4 days.


**Visibility timeout** is the amount of time that the message is invisible in the SQS queue after a reader picks up that message. Provided the job is processed before the visibility time out expires, the message will then be deleted from the queue. IF the job is not processed within that time, the message will become visible again and another reader will process it. This could result in the same message being delivered twice. Max 12 hours.

:bulb: if messages taking too long to process you can extends visibility period calling API __ChangeMessageVisibility__

Amazon SQS long polling is a wy to retrieve messages from your Amazon SQS queues. While the regular short polling returns immediately, long polling doesn't return a response until a message arrives in the message queue, or the long poll times out.

- distributed message queueing system
- allow to decouple the components of an applications so that they are independent
- pull-based
- visibility timeout - __30sec__, increase if it takes >30 seconds to complete. Max __12__ hours.
- short polling - returned immediately even if no messages are in the queue. 
- long polling - polls the queue periodically and only returns a response when a message is in the queue or go the timeout is reached. Max __20__ sec


### Standard (default)

Nearly unlimited number of transactions per second. It guarantees that message is delivered at least once. Sometimes it delivers more than once. It provides best-effort ordering which ensures that messages are generally delivered in the same order as they sent - no promises.

### FIFO
Order is guarantee and one time processed. No duplicates.
- 300 transactions per second (TPS)


Support message groups that allows multiple ordered messages groups within single group. Limited for 300 transactions per second (TPS).