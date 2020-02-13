# Service Catalog
- framework allowing administrators to create pre-defined products and landscapes for their users
- granular control over which users have access to which offering
- makes use of adopted IAM roles so users don't need underlying service access
- cloudformation templates
- administrator can version and remove products. Existing running products versions will not be shutdown

## Constraints
### Launch Constraint
- IAM role that Service Catalog assumes when an end-user launches a product
- user isn't necessarily going to have permissions to lunch this product

### Notification constraint
- specifies the Amazon SNS topic to receive notifications about stack events
- user can get notifications when products are launched or have problems

### Template Constraint
- one or more rules that narrow allowable values an end-user can select
- adjust product attributes based on choices a user makes. Example: Only allow certain instances types for DEV environment

