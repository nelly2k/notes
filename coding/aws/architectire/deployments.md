# Types of deployments
- bind bang. high risk, short implementation
- phase rollout
- parallel adoption. low customer risk, high data risk, expensive.

## Rolling deployment
- EC2, create new launch configuration
- A/B deployment. Route 53 -  Send 90 to old version, then 10 to new.
- Canary. Deploy ver 2 and wait for errors, if there no errors deploy the rest of the services
- Blue-Green Deployment.
    - > The goal of blue/green deployment is to achieve immutable infrastructure where you don't make changes to your application after it's deployed, but redeploy altogether.
    - update DNS with Route 53 to point to a new ELS or instance
    - swap auto-scaling Group already primed with new version instances behind the ELB
    - change Auto-Scaling Group Launch Configuration to use new AMI version and terminate old instances
    - swap environment URL of Elastic Beanstalk
    - clone stack in AWS OpsWorks and update DNS

## When blue/gree not recommended
- data store schema is too tightly couples to the code changes. 
- the upgrade requires special upgrade routines to be run during deployment
- off-the-shelf products might not be blue-green friendly

