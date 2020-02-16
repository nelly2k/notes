# Cloud Front
CDN - Content Delivery Network
is a system of distributed servers (network) that delivers webpages and other web content to a user based on the geographic locations of the user, the origin of the webpage, and a content delivery server.

Designed to overcome latency problem. Edge location download file from the home server and cache it locally. 
Time-to-live TTL - object lifetime cycle, between downloading and deletion. You can clean cache yourself, but is going to be charged extra.

- **edge location** - location where content is cached and can also be written. Separate to an AWS Region/AZ. Lots more then regions.
- **origin** - the origin of all the files that the CDN will distribute. Origins can be an S3 Bucket, and EC2 Instance, an Elastic Load Balancer, ot Route53
- **distribution** the name given the CDN, which consists of a collection of Edge Locations.
    - **Web Distribution** Typically used for Websites. HTTP/HTTPS
    - **RTMP** - User for media streaming/flash. Adobe Real Time Messaging Protocol.

Amazon CloudFront can be used to deliver our entire website, including dynamic, static, streaming, and interactive content using a global network of edge locations. Requests for your content are automatically routed to the nearest edge location, so content is delivered with the best possible 
performance. 

CloudFront also works with any non-AWS origin server.

Can deliver content by caching static and dynamic content. Dynamic content delivery is achieved using HTTP cookies forwarded from your origin. Supports streaming. 

Origins can be S3, EC2, ELB or another web server.

Support geo-restrictions, to now show some content to certain locations.

# Invalidation requests
1. delete file from origin and wait for the TTL to expire
1. use console
1. use API
1. third party tools

## Transfer Acceleration
enables fast, easy, and secure transfers of files over long distances between your end users and S3 bucket. 

Transfer Acceleration takes advantage of Amazon CloudFront's globally distributed edge locations. As the data arrives at an edge over an optimized network path. 

## SMI Server Name Indicator
To overcome certificate problem
CloudFront serves your content over HTTPS only to clients that support SNI. Older browsers and other clients will get HTTP.

