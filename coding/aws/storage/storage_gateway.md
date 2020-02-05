# Storage Gateway
[FAQ](https://aws.amazon.com/storagegateway/faqs/)

The Storage Gateway service is primarily used for attaching infrastructure located in a Data center to the AWS Storage infrastructure. The AWS documentation states that; "You can think of a file gateway as a file system mount on S3." Amazon Elastic File System (EFS) is a mountable file storage service for EC2, but has no connection to S3 which is an object storage service. Amazon Elastic Block Store (EBS) is a block level storage service for use with Amazon EC2 and again has no connection to S3. 

- virtual machine that you run on-premises with VMware or HyperV or via a specially configured Dell hardware appliance
- provides local storage resource backed by AWS S3 and Glacier
- often used in disaster recovery
- useful in cloud migration

## Modes
- File Gateway. Allow on-prem or EC2 instances to store objects in S3 via NFS (Network File Share) or SMB (Server Message block) mount point .
- Volume Gateway Stored Mode (Gateway-stored Volumes). Async replication of on-prem data to S3, iSCSI
- Volume Gateway Cache Mode (Gateway-cached Volumes). Primary data stored in S3 with frequently access data cached locally on-prem. iSCSI
- Tape Gateway (Gateway-Virtual Type Library). Virtual media changer and type library for use with existing backup software.