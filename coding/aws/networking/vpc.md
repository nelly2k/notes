# VPC (Virtual Private Cloud)

![VPC Components](./vpc-components.png)

a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network you define. Full control:
- own IP address, both IPv4 and IPv6
- security groups - stateful
- Network ACL - stateless
- subnets
- route tables configuration
- network gateways
- can create a Hardware VPN connection between your corporate datacenter and you VPC and leverage the AWS cloud as an extension of your corporate datacenter.

[AN INTERACTIVE IP ADDRESS AND CIDR RANGE VISUALIZER](https://cidr.xyz/)

## What we can do with as VPC?
- lunch instance into a subnet of a choice
- assign custom IP address ranges in each subnet
- configure route tables between subnets
-  create internet gateway and attach it 