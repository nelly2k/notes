# Route 53
Amazon's DNS server, allows to map your domain names to 
- ec2 instances
- load balancers
- s3 buckets

- ELBs do not have pre-defined PIv4 addresses; you resolve them using a DNS name


## Routing Policies
- Simple Routing. One record with multiple IP addresses. No healthcheck.
- Weighted Routing. For example 20% to ES-EAST-1, 80% to US-WEST-1 
- Latency-based Routing. Redirecting based on latency value
- Failover Routing. Active and passive environment, uses healthcheck
- Geolocation Routing. Knows where customers physically are.
- Geoproximity Routine Traffic Flow Only). Advanced.
- Multivale Answer Policy, the same as simple but with healthchecks