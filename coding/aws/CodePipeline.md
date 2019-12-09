CodeCommit - source control 
CodeBuild - build server
CodeDeploy - deployment
All together is CodePipeline

# CodeCommit
Source Control service GIT

Data is encrypted in transit and at rest.

# CodeDeploy

Automatically scales with your infrastructure and integrates in various CI/CD tools: Jenkins, GitHub, Atlassian, AWS CodePipeline.

Two types of deployment approach.
## In-Place
Stop instance and deploy to this instance. Can configure loadbalancer. Only for Ec2 or on-premises, not supported on lambda. Rollback = re-deployment.

## Blue/Green
New instancies are provisioning with the latest revision is installed on the new instances.

The new instances are registered with Load Balancer, traffic is then routed to the new instances and the original instances eventually terminated.

## Terms

__Deployment Group__ a eet of EC2 instances or lambda functions to which a new revision of the software is to be deployed

__Deployment__ - the process and components used to apply a new revision

__Deployment configuration__ a set of deployment rules as well as success/failure conditions used during a deployment.

__AppSpec File__ defines the deployment actions you want AWS CodeDeploy to execute

__Revision__ everything needed to deploy the new version: APpSpec file, application files, executables, config files.

__Application__ unique identifier for the application you want to deploy. To ensure the correct combination of revision, deployment configuration and deployment group are referenced during a deployment.