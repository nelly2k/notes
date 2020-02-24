# AppSync
## Terms
- an __API__ is all the components behind an endpoint. AppSync provides an HTTPS endpoint
- A __Data Source__ is any of the AppSync-supported providers for user data, such as DynamoDB or ElasticSearch
- A __Resolver__ is a transformation written using Velocity Template Language (VTL) that changes the output from a data source to match the output os a schema
- An __Operation__ is any type of GraphQL requests: query, mutation, or subscription. Multiple operations can be included in one request, but AppSync limits us to one mutation at a time



## GraphQL proxy
each part of the type can come from different data-sources.
User sends single request to graphQL, and it gather data from various services.