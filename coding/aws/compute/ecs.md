# Elastic Container Service


Managed, highly available, highly scalable container platforms.

## Amazon ECS
- AWS specific platform that support docker 
- leverage AWS service like Route53, ALB and CloudWatch
- "Tasks" are instances of containers that are tun on underlying compute but more or less isolated
- limited extensibility
### EC2 Type
- explicitly provision EC2 instances
- you responsible for upgrading, patching, care
- DIY cluster optimisation

### Fargate
- the control plane asked for resources and Fargate automatically provisioned
- Fargate provisions compute as needed
- handles cluster

## Amazon EKS Kuberneties

- Compatible with upstream K8s so its easy to lift and shift from other K8s
- a hosted k8s platform handles many things internally
- "pods" are containers collocated with one another and can have shared access to each other
- full access to k8s extensions

