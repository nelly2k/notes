## Business Continuity (BC)
Seeks to minimize business activity disruption when something unexpected happens.

## Disaster Recovery (DR)
Act of responding to an event that threatens business continuity.

## High Availability (HA)
Designing in redundancies to reduce the chance of impacting service levels.

## Fault Tolerance
Designing in the ability to absorb problems without impacting service level.

## Service Level agreements (SLA)
An agreed goal or target for a given service on its performance or availability

## Recovery Time Objective (RTO)
Time that it takes after a disruption to restore business process to their service levels

## Recovery Point Objective (RPO)
Acceptable amount of data loss measured in time.

# Disasters
- hardware failure
- deployment failure
- load induced - DDoS
- data induced
- credential expiration
- dependency - subsystem failure
- infrastructure
- identifier exhaustion
- human error

# Disaster Recovery Architectures
## Backup & Restore
pros:
- very common entry point
- minimal effort to configure

cons:
- least flexibility
- analogous to off-site backup storage

## Pilot Light

pros:
- const effective way to maintain "hot site" concept
- suitable for variety of landscapes and applications

cons:
- usually requires manual intervention for failover
- spinning up cloud environments will take minutes to hours
- must keep AMIs up-to-date with on-prem counterparts

## Warm Standby
pros:
- all services are up and ready to accept a failover faster within minutes or seconds
- can be used as a "shadow environment" for testing or production staging

const:
- resources would need to be scaled to accept production load
- still requires some environment adjustments but could be scripted
## Multi Site

pros:
- ready all the time to take full production load - effectively a mirrored data center
- fails over in seconds or less
- no or little intervention required to fail over

cons:
- most expensive DR option
- can be perceived as wasteful as you have resources just standing around waiting for the primary to fail

# Failure Mode and Effect Analysis (FMEA)
- what could go wrong
- what impact it might have
- what is the likelihood of it to occurring
- what is our ability to detect and react

Severity * Probability * Detection = Risk Priority Number