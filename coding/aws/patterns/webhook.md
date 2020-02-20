# Webhook
Pattern: Call me, "Maybe"

![Webhook0](./img/webhook0.png)

## operations, reliability
- lambda is too fast, and RDS is slow

Best practice: limit concurrency to protect non-scalable/stateful downstream services.

Better way: Kinesis as a buffer + a better mechanism to limit concurrency. Use Lambda Destinations for failed requests; set max retries
![Webhook1](./img/webhook1.png)

## security
- Use custom/cognito authorizers
- obfuscate data in a stream

![Webhook2](./img/webhook2.png)

## performance & cost
- kineses can batch your data, especially for low-volume traffic ofr up to 5 minutes 

## cost
If it is possible don't use slow RDS, but fast dynamodb
then you don't need kineses, you just can use api gateway => sqs (+ DLQ) + lambda + dynamoDb