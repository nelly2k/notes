# Cloud HSM
More robust alternative to KMS
- dedicated hardware device, Single Tenant
- must be within a VPC and can access via VPC peering
- does not integrate natively with many AWS services like KMS, but rather requires custom application scripting
- Offload SSL from web server, act as an issuing CA, enable TDE for Oracle databases