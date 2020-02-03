# Cognito
is an Identity Broker, it handles interactions between applications and the Web ID provider

- sign-up and sign-in to your apps
- access for guest users
- sync user data for multiple devices
- recommended for all mobile applications AWS services

### User Pools
are user directories used to manage sign-up and sign-in functionality for mobile and web applications.

Users can sign-in directly to the User Pool, or indirectly using Web ID providers. 

Successful authentication generates a number of JSON Web tokens (JWT)

### Identity Pool
enables you to create unique identities for your users and authenticate them with identity providers. With an identity, you can obtain temporary, limited-privilege AWS credentials to access other AWS services.

## Push Synchronization

Cognito tracks the association between user identity and the various different devices they sign-in from. Cognito users Push Sync to push updates ad sync user data across multiple devices. SNS is user to send silent push notifications to all the devices associated with a given user identity whenever data stored in the cloud changes.

## :green_book: Lab
- Cognito
- Create User pool
- add client
- add domain 

to fetch token
curl -X POST --user <app client id>:<app client secret> 'https://api-product.auth.us-east-1.amazoncognito.com/oauth2/token?grant_type=client_credentials' -H 'Content-Type: application/x-www-form-urlencoded'

url:<Your Cognito Domain>/login?response_type=token&client_id=<Your App Client ID>&redirect_uri=https://example.com


to delete first delete domain then delete user pool

