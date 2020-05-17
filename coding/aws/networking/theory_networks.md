# Regions, Availability Zones
Each Region - separated geographic area, each region has multiple isolated locations - Availability Zones. 
- region - is an independent geographic area
- availability zone - isolated location, all availability zones are connected through low latency network
- local zone  - 

__CIDR__ Classless Inter-Domain Routing 

## DNS Types
__SOA__ State Of Authority  - the name of the server that supplied the data for the zone, administrator, version of data file 

__NS__ name server records - used be top level domain servers to direct traffic to the Content DNS server which contains the authoritative DNS record.

__CName__ A canonical Name can be used to resolve one domain name to another. Map one IP to another IP.

__Alias__ records are user to map resource record sets in your hosted zone to Elastic Load Balancer, CloudFront distributions, or s# bucket that are configured as websites.

MX Records

PTR records

Choose alias over CNAME

- user tenters hellocloudguru2019.com
- query top level domain authority 
- it returns ns.awsdns.com
- query SOA where DNS records stored
    - "A" record Address. The A record is used by computer to translate the name of the domain to an IP address


__TTL__ time ti live. The length that a DNS record is cached on either the Resolving Server or the users own local PC in equal to the value of the TTL in seconds

## TCP vs UDP vs ICMP
### TCP (L4, Transport)
- Connection based stateful, acknowledges receipt
- After everything I say, I want to confirm that you received it.
- Uses: Web, Email, File Transfer
### UDP (L4, Transport)
- Connectionless, stateless, simple, not retransmission delays
- I'm going to start talking and its ok if you miss some words
- Uses: Streaming media, DNS
### ICMP (L3, Network)
- Used be network devices to exchange info
- We routers can keep in touch about the health of the network using our own language
- Uses: traceroute, ping


## Ephemeral Ports
- short-lived transport protocol used in IP communications
- Above well-known IP ports (above 1024)
- "Dynamic Ports"
- Suggested range is 49152 - 65535. Different OS uses different ranges
- NACL and security group implications

