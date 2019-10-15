# Elastic Compute Cloud
Virtual machines
Linux/windows

AMI - Amazon Machine Image - a template

## Pricing options
- On Demand. Low cost + flexibility. Short term applications.  
- Reserved - contract 1 or 3 years, pay upfront, but discounted per hour. Standard (up to -75%), convertible (up to -54%), or scheduled . 
- Spot - bid whatever price, great saving if an app has flexible start/end time. Like stack market. For example, genome computing.
- Dedicated hosts - physical hosts no multi-tenant virtualization, can use existing software licences. Can be purchased on-demand.

## EC2 Types
F - FPGA
I - IOPS
G - graphics
H - high risk throughput
T - cheap general purpose

D - density
R - RAM

M - main choice
C - compute

P - graphics (pics)
X - extreme memory

# EBS - Elastic Blob Storage
Virtual disk, allow to create storage volumes and attach them to EC2 instancies.
- General purpose SSD (GP2), up tp 10k IOPS
- Provisioned IOPS SSD (IO1), high performance, databases

## Volume types
- ST1 - throughput optimised. Big data, warehouse, log processed. Cannot be boot server.
- SC1 - Cold HDD. Infrequent usage. Fileserver. Cannot be book server.
- Magnetic (obsolete)