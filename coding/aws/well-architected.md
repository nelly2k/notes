# Well-Architected framework

## Operational Excellence
[Operation Excellence White Paper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Operational-Excellence-Pillar.pdf)
Does your architecture work? Will it continue to?
- all operation are code (in a repository, with version control)
- automation
- document is updated automatically (why?)
- small changes are better, you can roll the back
- iterate
- expect things to go sideways
- learn from failure and success

> ... the ability to run systems and gain insight into their operations in order to deliver business value, and to continuously improve supporting process and procedures
### Stages
- Prepare - forecast as much as possible
    - align business and operation priorities. What is our business goal?
    - How to meet that goal is a reality?
    - Any complains restrictions/requirements?
    - Dependencies between services
    - Does your architecture align with your __business priorities__?
    - Are your logs & observations actionable? Can you something about that?
    - Is your workload ready to go life? Consistent process. Code properly managed? Do you have __tests__?
   
- Operate - automate as much as possible
    - Is your application __healthy__? Need to define what does it mean. Metrics! Business metrics are key metrics
    - Shit happens. Be ready.
    - Anticipate planned and unplanned events
    - Respond in code
- Evolve - learn as much as possible
    - Post-event, have runbook changed
    - Test assumption
    - Are team evaluation their process
    - Experiment early 
## Cost Optimisation
Deliver business value for the lowest price point
- consumption based pricing
- measure efficiency constantly
- let AWS do the work whenever possible
> ...a continual process or refinement and improvement of a system over its entire lifecycle
### Areas
- Cost effective resources
    - Doesn't mean cheapest
    - Provision to current needs with an eye to future
    - "Right size", e.g. EC2 instances selection
    - Collect usage data, analyse, and base decisions based on data
    - Optimize by geography, consider userbase
    - Default to managed services, consider skills and support
    - Optimize data transfer, especially among regions
- Match Support & Demand
    - Pay for only that you use
    - Consumption models
        - Demand-based, ec2
        - Buffer-based, SNS topic
        - Time-base, kineses
- Awareness of Spend
    - aware of what are you using
    - understand stakeholders
    - governance model, cloudwatch for spending
    - Use tags for optimising cost
    - track lifecycle
- Optimise
    - align utilization with business requirements
    - report and validate your findings
    - evaluate new services for value (look for new managed services), part for feedback loop
    - continue push to managed services (skills, maintenance, __business value__)

## Reliability
[Reliability White Paper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Reliability-Pillar.pdf)


Will this system work consistently & recover quickly?

> ...the ability of a system to recover from infrastructure or service disruptions, dynamically acquire computing resources to meed demand, and mitigate disruptions...

- recover from issue automatically
- scale horizontally first for resiliency. Instead of having one enormous instance that that do all work, you should have multiple small instances in order to reduce risk
- reduce idle resources. It demands attention.
- manage changes through automation

### Areas
- Limits. Understand default & requested resource limits. There are soft and hard limits.
    - Are you planning beyond current resource limits?
    - How are you going to scale?
    - can limits can be lifted? With proper use case, AWS can help?
- Networking. Understand topology, bandwidth and latency.
    - Need to understand networks limitations. 
    - IP address space management
    - subnet structure, sub-network of your VPC
    - resilient topologies, design for scale and changes
    - ability to handle sudden increase of traffic
    - provide consistent performance - latency
- Availability. Ensure your application is ready for business use.
    - can users access your application? can they can do it quickly?
    - deploy without issue
    - can you application withstand partial outage?
    - 100% is unrealistic, most people shout to "Four nines" 99.99%

## Performance efficiency
[Performance efficiency Whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Performance-Efficiency-Pillar.pdf)

>...data-driven approach to building a high-performance architecture... ensure that you are taking advantage of the continually-evolving AWS Cloud.

Remove bottlenecks, reduce waste
- Let AWS do the work where is possible. e.g. auto-scaling, more SaaS, managed services, focus on business value
- reduce latency through region & the AWS edge
- Serverless
- experiments new services are released
- think about user, not your tech stack

### Phases
- __Selection__. Making logical choices. Is this the optimal solution for this workload?
    - What type of compute best suits? Lambda, EC2, Container, Fargate?
    - Which data store is ideal for the workload? RDS, flat file, noSQL 
    - Does you network design complement compute and data store choices?
- __Review__. Make sure the choices hold up. Is this still valid?
    - Is you infrastructure stored as code?
    - CI/CD automated?
    - can benchmarks be taken automatically?
    - does load testing interfere with production?
- __Monitoring__. Make sure they continue to work. What is happening right now?
    - Use active and passive monitoring where appropriate? CloudTrail (past), CloudWatch (current)
    - 5 phases of monitoring. Generation, Aggregation, Real-time processing, Storage, Analytics
    - creating actional metrics

## Security

>...the ability to protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies

Does the system work only as intended?
- identities has absolutely least privilege
- know who did what when, CloudTrail
- security is woven into the fabric of the system
- automate security tasks
- encrypt data in transit and at rest
- prepare for the worst

### Areas
- Identity & Access. Who can do what, when?
    - IAM. Only authorized & authenticated users can take action.
    - least privilege
    - deny root and full access 
    - regular review access and privilege
- Detective Controls. Is this normal? Looking for abnormality
    - Capture and __analyse___ logs
    - Regular auditing configuration. AWS Config
    - Look for unauthorized or unexpected changes
    - Monitor workload for abnormalities. Look for problem. 
- Infrastructure protection. Trust boundaries and chokepoints.
    - Establish trust boundaries. Don't setup hard wall, have clear lines of access
    - Protected network in/out. Intrusion prevention IPS
    - Protect all hosts.
    - Configure services to meet security posture needs
    - Enforce service level protection
- Data protection. Classification, management, and encryption.
    - Understand what data do you have and how sensitive is it. What is the worst case scenario?
    - Who and when should be able to access it?
    - Granted access doesn't mean you have access to a data 24/7, there are may be boundaries for example you can access certain record in response of a support ticket. Or in certain times.
    - Encrypt in transit.
    - Backup your data. Test these backups.
- Incident Response. Contain and recover from "unplanned" events.
    - Do you have a plan to tag affected resource?
    - Can you adjust permission to allow for containment?
    - Can you redeploy to recover quickly?
    - Did you learn from the incident and adjust?

# Applying
> 21st century Architecture are controllable, resilient, adaptive, and data driven.

Find a balance between 5 pillars.

Architecture is a living things, constantly evolve. Need data driven approach.

## Establish your boundaries
- What are your business priorities?
- What is the worst possible scenario?
- What are you immovable constraints?
- What data is your solution processing? (complaints, legal)
- What skills does your team have? 
- What is the timeline of the project?

# Modern Application Development
There is no right design, jus`t a series of improvements.
All about tactics. 

- Idea
- Experiment
- Feedback 

## Modern application capabilities
- Secure
- Resilient
- Elastic
- Modular
- Automated
- Interoperable

## Paths to Modernization
- Re-host -> Forklift as-is from the data center
- Re-Platform -> Forklift with small modifications. Enable auto-scale, multi-region. Small tweaks.
- Re-factor -> break up the monolith. Setting up yourself to long-term success.
- Re-invent -> Serverless, microservices...

## Checklist
- Build security & compliance into the fabric of the application from the day one.
- Microservices by default. Use data driven approach
- Serverless is the starting point
- Everything is code
- CI/CD runs the application from day one
- Monitoring, traceability, and observability are priorities 

> Continue to innovate through low-risk experiments

# Operations, Game days, Incident Response
- Does the design translate to reality?
- Do you know is something broken?
- What if X broken, is Y going to continue to works?

## Runbook
A __runbook__ is versioned, tested, & the single source of operations.

- Makes operations easy
- Reduce errors
- Cuts down on work
- Versioned on git/version control
- Starts with cloudformation script/many
- Automates everything
- Include tests
- Idempotent (always works the same)

## [GameDay](https://aws.amazon.com/gameday/)

- learning exercise, spin up prod like environemtn
- uncover gaps in runbook

1. create duplicate environment with simulated data
2. give team chance to react
3. expect the unexpected

## Phases of [incident response](https://d1.awsstatic.com/whitepapers/aws_security_incident_response.pdf)
- Prepare, Runbook
- Identify. What is happening.
- Contain, so it doesn't spread
- Eradicate, e.g. remove malware
- Recover, restore service back to production
- Learn, add more records to a runbook

# Security
## Identity
- Keep policy small, generally one policy per workflow
- [IAM best practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)

## Encryption
### In transit
- use ssl/tls even internally (encryption in transit)
- end-to-end encryption (data never get decrypted/re-encrypted on the way). Sometimes we need to terminate the connection.
- Use a VPN to connect to on-premises resources
- be aware of monitoring impact, loose ability to monitor, cannot see inside transaction.
### At rest
- where is the key stored? Should be separated from data?
- under what conditions is the key released?
- are key being rotated? Can you decrypt backups with the new version of a key?