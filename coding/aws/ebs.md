# Elastic Block Storage

- virtual hard drives
- only can be used with EC2
- tied to a single AZ 
- variety of optimised choices for [IOPS, Throughput](./theory_dataStores.md) and cost

## Snapshot
- cost-effective and easy backup strategy
- share data sets with other users or accounts
- migrate EC2 system to a new AZ or Region
- convert unencrypted volume to an encrypted volume
- store changes between snapshots only, not the whole image
- if snapshot in the middle is deleted, these changes magically moved to next snapshot

## Data Lifecycle Manager
Helps manage EBS Snapshots, you can automate the creation and deletion on schedule. Have retention rules