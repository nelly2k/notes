# Reactive Microservices

> Every architectural decision includes a trade off

__Resilience__ is a capacity to recover quickly from difficulties. 

## Difficulties
Microservices require to provide multiple external services to provide the same functionality that originally has been provided by host

- cope with external dependency failure, various exceptions
- cope with external dependency response time


# Reactive Manifesto
Characteristics of reactive application

## Responsive
responsive systems provide timely response against customer interaction

### How to measure? 
First byte latency as an indication of customer experience - how long customer should wait till between request and response.

Server and client side metrics. 

## Resilient
stay responsive in the even of failures
- Replication - ability to execute multiple copies of a given tasks in parallel. Example: two server instances and load balancer. AWS autoscaling groups
- Containment - decoupling an architecture, often supported by messaging infrastructure
- Isolation
- Delegation - passing task context execution from one component to another. Combination of containment and isolation.

Example:


Circuit breaker - Netflix 
![Diagram](./circuit_breaker.drawio)


Bulkhead


## Elastic
stay responsive under load

Elasticity is not scalability, it is about allocating and deallocating resources. Achieved by shading, replication, and workload distribution.

## Message driven
loose coupling between services


To read:
https://docs.microsoft.com/en-us/dotnet/architecture/microservices/architect-microservice-container-applications/resilient-high-availability-microservices