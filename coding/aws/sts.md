# Security Token Service (STS)
Grant users limited and temporary access to AWS resources. Users can come from 3 sources:
- Federation (AD). Uses SAML.
- Federation with Mobile Apps (Facebook, Amazon, Google, other OpenID)
- Cross Account Access


## Terms
__Federation__ - combining or joining a list of users in one domain (such as IAM) with a list of users in another domain (Facebook, AD)

__Identity Broker__ - a service that allows you to take an identity from point A and join it to point B.

__Identity Store__ - services like AD, Facebook, Google

__Identities__ - a user of a service like Facebook etc...

# Assume role with Web Identity
- _assume-role-with-web-identity_ is an API provided by STS 
- returns temporary security credentials for users authenticated by a mobile or web application or web ID provider
- for mobile apps, Cognito is recommended