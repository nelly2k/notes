# Elastic Load Balancer
Balancing load 

## Types
### Application [OSI 7](./osi.md)
Suited for load balancing of HTTP and HTTPS traffic and application aware. 


### Network [OSI 3](./osi.md) - most expensive
TCP traffic where extreme performance is required. Capable of handling millions of requests per second, while maintaining ultra-low latencies.

### Classic - legacy [OSI 7](./osi.md)
HTTP/HTTP

Throws 504 if app is not responding
*X-Forwarded-For* Header - to see public IPv4 address