# API gateway
is a fully managed service that makes it easy to publish, maintain, monitor, and secure APIs. 

- Expose HTTP endpoints to define a RESTful API
- connect to services like lambda nd dynamoDB
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
