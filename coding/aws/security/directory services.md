# Directory Services
## AWS Cloud Directory
- Cloud native directory to share and control access to hierarchical data between applications
- Best for cloud applications that need that

## Amazon Cognito
- sign-up and sign-in functionality that scales to millions of users and federated to public social media services
- develop consumer apps or SaaS

## AWS Directory Service for Microsoft Active Directory
- AWS managed full AD running of Windows Server 2012 R2

## AD Connector
- allows on-premises users to log AWS services with their existing AD credentials. Also allows EC2 instances to join AD domain
- SSO for on-prem employee and adding EC2 instances to the domain
- must have an existing AD
- existing users can access AWS assets via IAM roles
- support MFA via existing RADIUS-based MFA infrastructure

## Simple AD
- low scale, low cost standalone AD implementation based on Samba
- supports user accounts, groups, group policies and domains
- Kerberos-based SSO
- MFA not supported
- No Trust Relationships