
# Relational database service
OLTP - on-line transaction processing

- SQL
- Oracle
- MySQL
- PostgrePL
- Aurora - free tear is not available
- MariaDB

#RedShift
OAL - on-line analytics processing

## Elasticache
is a web service that makes it easy to deploy, operate, and scale an in-memory cache in the cloud. The service improves the performance of web applications by allowing you to retrieve information from fast, managed, in-memory caches, insted of relying entirely on slower disk-based datamases.

- Memcached
- Redis


## Script to install into EC2 instance

1. Install php
2. install my-sql
3. start apache
4. Create simple php page

```
#!/bin/bash  
yum install httpd php php-mysql -y  
yum update -y  
chkconfig httpd on  
service httpd start  
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html  
wget https://s3.amazonaws.com/acloudguru-production/connect.php
```