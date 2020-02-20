# Elastic File Service
- implementation of Network file share (NFS)
- Elastic storage capacity, and pay for only what you use
- no need to provision
- distributed among multiple AZ
- can be mounted on-prem (make sure a channel is wide enough)
- 3 time more expensive thant EBS, and 20 times more expensive than S3
- use DataSync to load data from on-prem

Q. You have decided to use EFS for sharing files across many EC2 instances and you want to be able to tolerate an AZ failure. You should

A. Create EFS mount targets in each AZ and configure each EC2 instance to mount the common mount target FQDN