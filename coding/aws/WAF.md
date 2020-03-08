# WAF
Is Web Application Firewall helps to protect your website and web-application against various attacks. 
__OWASP__ Open Web Application Security Project 
Top 10 list of most common categories of application security flaws


- works with Cloudfront, Application Load Balancer
- analyses incoming traffic and you can setup rules and take actions
- suppports rate based rules, trigger and block when the rate of requests from an IP address exceeds a customer-defined threshold
``` Rule - action: BLOCK; rate limit: 2000; rate key: IP```
- blocks IP address based in rules
- protects against CORS attacks

## Top 10
1. Injection - add matching words
2. Broken Authentication and Session Management - e.g. stolen jwt, add jwt into matching rules. 
3. Cross-Site Scripting
4. Broken Access Control
5. Security Misconfiguration
6. Sensitive Data Exposure
7. Insufficient Attack Protection
8. Cross-Site Request Forgery
9. Using Components with Known-Vulnerabilities
10. Underprotected API


Rules can match against query string, uri, header, body
