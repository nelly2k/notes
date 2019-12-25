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
- use __ProjectionExpressions__ to refine