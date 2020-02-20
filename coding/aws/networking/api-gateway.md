# API gateway
is a fully managed service that makes it easy to publish, maintain, monitor, and secure APIs. 

- Expose HTTP endpoints to define a RESTful API
- connect to services like lambda and dynamoDB
- each endpoint to a different target
- track and control usage by API key
- throttle requests to prevent attacks. Will return 429 in case of overuse. Can throttle by API key.
- log all requests to cloudWatch
- API description can be imported using Swagger importer

# Configuration
- define API (controller)
- define resources and nested resources (URL paths)
- select supported HTTP methods (verbs)
- set security
- set request and response transformations
- deploy to different stages
- supports AWS cert managements

## API Caching
You can enable API caching in order to cache you endpoint;s response.  

## Same Origin Policy
Under the policy, a web browser permits scripts contained in a first web page to access data in second web page, but only if both pages have the same origins. This is preventing XSS attacks. 


## What API Gateway can do?
- mocking responses
- integrate directly with dynamodb
- validate request body (if it not valid it bounce back and we don't pay for these)
- authorization
- map data -> reshape request/response body with templates
- integrate with http requests
- response custom errors
- throttle requests by API key, or/and per path (granular). Method cannot override account
- integrate with WAF (firewall) to protect API 
    - SQL injections
    - XXS attacks
    - block specific IP
    - block requests from certain countries
    - match specific string or regular expression patters in the HTTP header, method, query , UR or body
    - block specific user-agents, bots and so on.
- black listing/white listing should be implemented with resource policy
- gather metrics
    - errors
    - count
    - latency
    - integration latency
    - cacheHitCount
    - cacheMissCount
    - x-ray metrics
    - audit, AWS config
    - log (can customize log format)


## Authorization/authentication options
- anonymous
- IAM permissions
- cognito authorizer
- custom/lambda authorizer

