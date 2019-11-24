# Identity Account Management
allows you to manage users and their level of access to the AWS Console.
- centralised control of account
- shared access
- granular permissions
- identity federation (AD, Facebook, LinkedIn)
- MFA
- Temporary access
- own password rotation policies
- PCI DSS compliance


IAM is global, never regionally 
## Terms
- Users - people
- Groups - a collection of users under one set of permissions
- Roles - you create roles and can assign them to AWS resources
- Policies - a document that defines one (or more) permissions. Can be attached to a user, group or role, so entity has a these permissions


## Resetting Root user
- new password and strong password policy
- deactivate and re-setup MFA
- check access ID and secret and delete
- check other users


# Policies
specify what you are allowed to do with any resource. They are global and apply to all areas. You attach them to users, groups and roles and they are become subject to the permissions you define in the policy.

## Types
### AWS Managed Policies
Created by AWS, can change - minor. Shared across all AWS accounts. 

### Customer Managed Policies
Created by users, re-usable.

### Inline Policies
1-to-1 relationship between policy and principal entity. Policy is not re-usable.

## S3 Bucket Policies
Only can be attached to S3 buckets. Specify which actions allowed and which denied on the bucket. 
Size limits: 2kb per user, 5kb per group, 10kb per role. S3 policies up to 20 kb.
You prefer to keep access control policies in the S3 environment.


Explicit deny - deny everything for everybody - overrides an allow!


## Policy conflicts
Whenever an AWS principle (user,group, role) issues a request to S3, the authorization decision depends on the union of all the IAM policies, S3 bucket policies, and S3 ACLs that apply.

So if you DENY access to something somewhere and then something else allows access, the DENY will override the ALLOW.

Only if no method specifies a DENY and one or more methods specify an ALLOW will the request be allowed.