# Elastic Beanstalk

is a service for deploying and scaling web applications developed in popular languages.

- fastest and simplest way to deploy your application in AWS
- automatically scales your application up and down
- you can select the EC2 instance type that is optimal
- you can retain full administrative control over the resources powering your application
- monitor and manage application health via a dashboard
- integrated with CloudWatch and x-Ray for performance
- languages: java, php, python, ruby, go, docker, .net, nodejs
- application server platform: tomcat, passenger, puma, IIS
- updates, monitoring, health checks included

## Deployment policies
- all at once. Deploys to all instances, all instances are going to out of services. Suitable for dev and test env.
- rolling. In batches. No ideal for performance sensitive systems. 
- rolling with additional batch. Launces additional batches.
- immutable. Deploys to fresh instances, when passed health check then deploys to others. Maintain a full capacity. 

## Configuration
Environment can be customized using config files. packages to install, Linux users and groups, run shell commands, specify services pr configure load balancer.


Shall have .config extension and saved into .ebextensions folder of root folder of source code. YAML or JSON format.

example myHealthcehckurl.config
```json
{
    "option_settings":[
        {
            "namespace": "aws:elasticbeanstalk:application",
            "option_name": "My application healthcheck url",
            "value": "/healthcheck"
        }
    ]
}
```

# RDS
- you can lunch the RDS instance from within the Elastic Beanstalk console - so it is going to be create withing Beanstalk environment - good for dev/test. If you terminate env RED is going to be terminated as well.

- decouple RDS instance, run RDS independently. 

In order to connect to RDS
- Security Group must be added to your environment's scaling group
- need to provide connection string using Elastic Beanstalk environment properties