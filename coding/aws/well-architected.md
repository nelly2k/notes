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
## Stages
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
Will this system work consistently & recover quickly?
- recover from issue automatically
- scale horizontally first for resiliency
- reduce idle resources
- manage changes through automation
## Performance efficiency
Remove bottlenecks, reduce waste
- Let AWS do the work where is possible. e.g. auto-scaling
- reduce latency through region & the AWS edge
- Serverless
- experiments new services are released
- think about user, not your tech stack
## Security
Does the system work only as intended?
- identities has absolutely least privilege
- know who did what when
- security is woven into the fabric of the system
- automate security tasks
- encrypt data in transit and at rest
- prepare for the worst