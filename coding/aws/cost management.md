# Cost management

__Capital Expenses CapEx__ money spent on long term assets like property, building and equipment.

__Operational Expenses OpEx__ - money spent for on-going costs for running the business. Usually considered variable expenses.

__Total Cost of Ownership (TCO)__ - a comprehensive look at the entire cost model of a given decision or opinion, often including both hard costs and soft costs

__Return of Investment (ROI)__ the amount an entity can expect to receive back within a certain amount of time given an investment

## Cost Optimisation strategies
### Appropriate Provisioning
- provision the resources you need and nothing more
- consolidate where possible for greater density and lower complexity (multi-database RDS, containers)
- CloudWatch can help by monitoring utilization

### Right-Sizing
- using lower-cost resources that still meets the technical specifications
- architecting for most consistent use of resources is best versus spikes and valleys
- loosely coupled architectures using SBS, SQS, Lambda and DynamoDb can smooth demand and create more predictability and consistency. 

### Purchase Options
 - for permanent applications or needs, Reserved Instances provide the best cost advantage
 - spot instances for temp horizonal scale
 - EC2 fleets lets you defined mix of On-Demand,Reserved and Spot instances

### Geographic Selection
- price varies from region to region
- consider potential savings by location resources in a remote region if local access is not required
- latency can be soled using route53 or cloudfront

### Managed Services
- use managed service, reduce cost of ownership

### Optimized Data Transfer
- data going out and between AWS regions can become a significant cost component
- Direct Connect can be a more cost-effective option given data volume and speed

## Tagging and resource group
- can be used for cost allocation, security, automation and other use cases.
    - IAM access control based on tags
- can enforce tagging standardisation via AWS Config Rules or custom scripts    
    - e.g. EC2 instance not properly tagged are stopped or terminated nightly
- most resources can have up to 50 tags