# Elastic Load Balancer
Balancing load across multiple web services.
- distributes inbound connections to one or many backend endpoints
- can be used for public or private workloads
- consumes IP addresses withing a  VPC subnet
- scale - elastic

## Types
### Application [OSI 7](./osi.md)
Suited for load balancing of HTTP and HTTPS traffic and application aware. Intelligent, can see inside request and make decisions. You can create advanced request routing, sending specific requests to specific web servers.
- Protocols: HTTPS, HTTP
- supports path or host based routing
- websockets
- SNI
- Sticky session
- user authentication

Routing based on
- host-based routing
- path-based routing
- HTTP head-based routing
- HTTP method-based routing
- query string parameter based routing
- source IP address CIDR based routing

### Network [OSI 4](./osi.md) - most expensive
TCP traffic where extreme performance is required. Capable of handling millions of requests per second, while maintaining ultra-low latencies.
- Protocols: TCP, UDP, TLS
- websockets
- elastic IP/static IP

Routing based on
- port number
- TCP connections to backend are persisted for the duration of connection

### Classic - legacy [OSI 7 or OSI 4](./osi.md)
HTTP/HTTP, not intelligent. Use for route robin
- Protocols: TCP, SSL, HTTP, HTTPS
- sticky sessions

Throws 504 if app is not responding
*X-Forwarded-For* Header - to see public IPv4 address

## Sticky Sessions (for classic)
Classic LB routes each request independently to the registered EC2 instance with the smallest. load.

Sticky session allow you to bind a user's session to a specific EC2 instance. This ensures that all requests from the user during the session are send to the same instance.

You can enable SS for Application LB, but traffic wil be send to the Target Group level.

## Similarities
- all zonal failover
- healthchecks
- cross-zone load balancing
- cloudwatch metrics
- SSL offloading
- resource-based IAM permissions



## Cross Zone Load Balancing
If enabled then LB send traffic to instances in different AZ

## Path Patterns (path based routing)
You can create a listener with rules to forward requests based on the URL path. If you are running microservices, you can route traffic to multiple back-end services using path-based routing. 

# Hight Availability Architecture
- [Netflix plan for failure](http://goo.gl/UR2nzM)
- Everything fails
