# Elasticache
in memory cache in cloud

- improves performance of apps, allowing to fetch data fast from in-memory cache rather than from slow storage
- sits between app and db
- takes load off db
- good if db read-heavy and the data is not changing frequently

## Memcached 
- widely adopted memory object caching system
- multi-threaded
- no multi-AZ capability - no clustered 

## Redis
- open-source in-memory key-value store
- supports more complex ata structure: sorted sets and lists
- supports master/slave replication amd multi-AZ for cross AZ redundancy

# Caching strategies
## Lazy Loading
- loads the data into the cache only when necessary
- if data is in the cache elasticache returns the data to the app
- if data is not or expired, return null
- app responsible to fetch data from db and put into cache
- :+1: no useless data
- :+1: node failures are not fatal, you are always ready that data is not there
- :-1: cache miss penalty 
- :-1: data can become stale

- TTL (Time To Live) - expiration - to battle stale data 

## Write-Through
- adds/updates data to the cache whenever data is written to the database
- :+1: never stale
- :+1: users are generally more tolerant of additional latency when updating data than when retrieving it
- :-1: write penalty
- :-1: if node fails a new one is spun up, data is missing until added/updated
- :-1: wasting of resources if most of the data is never read