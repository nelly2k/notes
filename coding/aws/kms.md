# Key Management Service (KMS)

KMS is a managed service that makes it easy for you to create and control the encryption keys used to encrypt your data. AWS KMS is integrated with other AWS services including EBS, S3, Amazon Redshift, Amazon Elastic Transcoder, Amazon WOrkMail, Amazon RDS and others to make it simple to encrypt your data with encryption keys that you manage.

KMS keys are regional, you cannot create key in one region and use it in another one.

## The Customer Master Key (CMK)
- alias
- creation date
- description
- key state (enabled, disabled)
- key material (customer provided or AWS provided)
Can never be exported

### Setup
- Create alias and descirption
- Choose material options
- Define key Administrative Permissions (users/roles that can administer but not use)
- Define key Usage Permissions (users/roles who can use it to encrypt/decrypt data)

# KMS API Calls
YOURKEYIDHERE - grab from console

Encrypt - going to create a new file encryptedsecret.txt

``` aws kms encrypt --key-id YOURKEYIDHERE --plaintext fileb://secret.txt --output text --query CiphertextBlob | base64 --decode > encryptedsecret.txt ```

Decrypt

``` aws kms decrypt --ciphertext-blob fileb://encryptedsecret.txt --output text --query Plaintext | base64 --decode > decryptedsecret.txt ```

Re-encrypt

```aws kms re-encrypt --destination-key-id YOURKEYIDHERE --ciphertext-blob fileb://encryptedsecret.txt | base64 > newencryption.txt ```

Enable-key-rotation - rotate key every year

```aws kms enable-key-rotation --key-id YOURKEYIDHERE```


## Envelope Encryption
Master Key -> Envelope Key (Data Key) -> Data

- CMS user to decrypt the data key (Envelope key)
- Envelope key is used to decrypt the data

## Tips
- key deletion can be scheduled