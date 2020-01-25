# CloudFormation
The way how to describe and declare infrastructure.

## Resources
[Template Snippets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/CHAP_TemplateQuickRef.html)

## Structure
- Metadata - info about data, for example contract or design
- Parameters - custom input values
- Conditions - e.g. provision resources based on environment 
- Mappings -  custom mappings
- Transform - code snippet outside of the main template, stored in S3. e.g. re-usable pieces of CloudFormation code 
- Resources (*) - list of resources to be deployed
- Output