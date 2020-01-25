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

# Code Pipeline
is a fully managed CI and CD service. CP can orchestrate the Build. Test, and deployment. 

## AppSpec file
user to define the parameters that will be used for a CodeDeploy deployment. The file structure depended on whether you are deploying to Lambda or EC2.
### Lambda
__version__: 0.0 - for future use

__resources__: the bane and properties of the Lambda function to deploy

__hooks__: specifies Lambda functions to run at set points on the deployment lifecycle to validate the deployment.
- __BeforeAllowTraffic__ user ti specify tasks or functions you wan to run before traffic is routed to the newly deployed Lambda function. tests to validate that the function has been deployed correctly
- __AfterAllowTraffic__ after. e.g. test to validate that the function is accepting traffic correctly and behaving as expected

### EC2 and On Premises
must be placed in the root folder

__version__: 0.0

__os__: linux, windows

__files__: the location of any application files the need to be copied and where they should be copied to

__hooks__: lifecycle events

- __BeforeBlockTraffic__ run tasks on instances before the are deregistered from a load balancer
- __BlockTraffic__ - deregister instances from a load balancer
- __AfterBlockTraffic__  run tasks on instances after they are deregistered from a load balancer
- __ApplicationStop__ gracefully stop the application in preparation for deploying the new revision
- __DownloadBundle__ the CodeDeploy agent copies the application revision files to a temporary location
- __BeforeInstall__ details of any pre-installation scripts
- __Install__ - the CodeDeploy agent copies the application revision files from their temporary location to their correct location
- __AfterInstall__ details of any post-installtion scripts
- __ApplicationStart__ restarts any services that were stopped during ApplicationStop
- __ValidationService__ details of any tests to validate the service
- __BeforeAllowTraffic__ before registered with LB
- __AllowTraffic__ register with LB
- __AfterAllowTraffic__ after registration with LB