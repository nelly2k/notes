# Dynamo DB
Amazon DynamoDB is a fast and flexible NoDQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed database and supports both documents and key-value data models. Its flexible data model and reliable performance make it a great fit for mobile, web, gaming, ad-tech, IoT, and many other applications. 

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
