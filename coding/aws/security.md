# Security

## Triad models
CIA
AAA
Non-repudiation (can't deny) - CloudTrail

## CIA model
Confidentiality, Integrity, Availability

### Confidentiality
Privacy. Not necessary secret, but expose to third party where needed, based on certain rules. Encryption at rest, in transit. MFA. 
- identity access management
- bucket policies
- security groups
- access control
- encryption
- MFA

### Availability
Redundancy, multiple availability zones. Design for failure.
- scaling
- regions
- zones
- health checks

### Integrity
Consistency, accuracy and trustworthy of data. Data cannot be altered by third party people. Access control. Checksum.
- SSL
- encryption
- identity access management
- bucket policies
- version control
- MFA


## AAA Model
Authentication, Authorization, Accounting
(compliments CIA)

### Authentication
Who are you?
- IAM

### Authorization
what you can do
- permissions
- policies

## Accounting
What are you doing, audit
- CloudTrail

# How AWS secure their stuff?
[Security Pitch](https://aws.amazon.com/security/)

## Physical and Environmental Security
- Fire detection and Suppression
- Power
- Climate and Temperature
- Management
- Store Service Decommissioning

## Business Continuity Management
- Availability
- Incident Response
- Company-Wide Executive Review
- Communication

## Network Security
- Secure Network Architecture
- Secure Access Points
- Transmission Protection
- Amazon Corporate Segregation
- Fault-Tolerant Design
- Network Monitoring and Protection

# Shared Responsibility Model
- [Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/)
- [Overview of Security Processes](https://d0.awsstatic.com/whitepapers/aws-security-whitepaper.pdf)

While AWS manages security of the cloud, security in the cloud is the responsibility of the customer. Customers retain control of what security they choose to implement to protect their onw content, platform, applications, systems and networks, no differently than they would in an on-sire data center.

## AWS responsibilities
- global infrastructure
- hardware, software, networking, and facilities
- "managed service" (s3, dynamoDb)
- compute, storage, database, networking
- region, availability zones, edge location

## Customer Security Responsibilities
- IaaS inc. updates and security patches
- firewall configuration
- data
- platform, applications, IAM
- OS, Networks
- encryption


## The model changes for different service types:
### Infrastructure Service
This category includes compute services, such as EC2, EBS, Auto Scaling, VPC. With these services, you can architect and build a cloud infrastructure using technologies similar to and largely compatible with on-premises solutions. You control the operating system, and you configure and operate any identity management system that provides access to the user layer of the virtualization stack. 

### Container services
Services in this category typically run on separate EC2 or other infrastructure instances, but sometimes you don't manage the operating system of the platform layer. AWS provides a managed service for these application "containers". You are responsible fir setting up and managing network controls, such us firewall rules, and for managing platform-level identity and access management separately from IAM. Examples of container service includes RDS, EMR & Elastic Beanstalk.

### Abstracted services
High-level storage, databases, messaging services - S3, Glacier, DynamoDB, SQS, SES. These services abstract the platform pr management layer on which you can build and operate cloud applications. You access the endpoints of these abstracted services using AWS APIs, and AWS manages the underlying service components or the operating systems on which they reside.

# Security in AWS
- Visibility - AWS Config
- Auditability - AWS Config
- Controllability - CloudTrail, KMS, HMS
- Agility - CloudFormation, Elastic Beanstalk
- Automation - OpsWorks, CodeDeploy
- Scale - every customer has the same AWS security.

IAM, CloudWatch, Trusted Advisor

## AWS Config
Asset, audit and evaluate resources. Review changes in configuration and relationship between resources.
- Change management, audit all configuration changes
- streams changes in SNS
- define rules

CloudTrail - event history of account activity, including actions taken through console, API, SDK, CLI.