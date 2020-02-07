# Regions, Availability Zones
Each Region - separated geographic area, each region has multiple isolated locations - Availability Zones. 

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
