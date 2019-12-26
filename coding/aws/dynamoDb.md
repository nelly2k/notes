# Dynamo DB
Amazon DynamoDB is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed database and supports both documents and key-value data models. Its flexible data model and reliable performance make it a great fit for mobile, web, gaming, ad-tech, IoT, and many other applications. 

- Stored on SSD storage
- spread across 3 geographical distinct data centers

## Consistency models
### Eventual consistent reads (default)
Consistency across all copies of data is usually reached within a second. Repeating a read after a short time should remain the updates data (Best Read Performance)

### Strongly consistent reads
read returns a result that reflects all writes that received a successful response prior to the read

## Glossary
- Tables
- Items (records)
- Attributes (columns)
- Supports key-value and document data structure
- Key - the name of the data. Value - the data itself
- Documents can be written in JSON, HTML or XML

## Primary Key
### Partition key
Unique attribute, input into internal hash function that determines the partition or physical location on which the data is stored.

### Composite Key
Combination of a partition key and sort key.
In this pase partition key is not unique, but combination is.

## Access Control
- managed using AWS IAM
- can generate temporary access keys
- can use special IAM condition to restrict user access to only their own records (for example a Policy that allow access only to items where the Partition Key values matches their User ID). Condition parameter: __dynamodb:LeadingKeys__


# Indexes
index helps tp perform fast queries on specific columns in a table
- local secondary index
- global secondary index

## local secondary index
- only can be created with table, cannot change later
- same partition as original table, but different sort key
- organised according to an alternative sort key
- e.g. partition key: userid, sort key: account creation key

## global secondary key
- can be modified later
- different partition key as well as different sort key
- different view of data
- speed up any query relating to this alternative Partition and Sort key

# Scan vs Query API call

## Query
__Query__ operation finds items in a table based on the Primary Key attribute and a distinct value to search for.

> select an item where the user id is equal to 212 will select all attributes for that item

- can use optional sort key and value to refine results
- by default query returns all the attributes for the items but you can use the __ProjectionExpression__ parameter if you want to query to only return the specific attributes
- results are always sorted by the Sort key ACS, numeric or ASCII
- to reverse an order by setting the __ScanIndexForward parameter__ to false
- by default, queries are eventually consistent
- you need to explicitly set the query to be Strongly Consistent

## Scan
__Scan__ operation examines every item in the table
- all attributes by default
- use __ProjectionExpressions__ to refine output

### how to improve performance
- set smaller page size
- large number of smaller operations will allow other requests to succeed without throttling
- avoid scan if you can use Query, Get, BatchGetItem APIs
- by default scan operation processes data sequentially in returning 1Mb increments before moving on to retrieve the next 1Mb of data. It scans 1 partition at a time.
- you can use __parallel scans__ instead by logically dividing a table or index into segments and scanning each segment in parallel
- best to avoid parallel scans in a table of index is already incurring heavy read/write activity from other application

## vs
- query is more efficient
- scan dumps entire table and the removed items you don't need
- scan operation on a large table can use up the provisioned throughput for a large table in just a single operation

# Provisioned Throughput
measured in capacity units

1 write capacity unit = 1Kb write/sec

1 read capacity unit = 1Kb strongly consistent read of 4Kb/sec __OR__ 2 eventually consistent reads of 4Kb/sec

if your application reads or writes larger items is will consume more capacity units and will cost you more as well

:green_book: Table with 5RCU and 5WCU 
- 5RCU * 4Kb strongly consistent reads = 20Kb/sec
- 5RCU * 2 * 4Kb eventual consistent reads = 40Kb/sec
- 5WRU * 1kb writes = 5Kb/sec 

:green_book: An application needs to read 80 items/sec, each item 3Kb, you need Strongly Consistent Reads

- calc how many RCU needed for each read: 3Kb/4Kb = 0.75, rounded to nearest round number = 1
- multiply by the number of reads per second = 80 RCU required
- divide by 2 for eventual consistency - 40RCU

# On-Demand Capacity Option
- charges apply for reading, writing and storing
- don't need to specify requirements
- dynamoDb scales up and down based on activity
- pay per request