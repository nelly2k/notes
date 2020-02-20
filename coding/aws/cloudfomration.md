# CloudFormation
- The way how to describe and declare infrastructure. 
- Infrastructure as a code
- nested templates
- yaml and json

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


## Concepts
- Template - file with instructions
- stacks - set of tools
- change sets - summary of proposed changes, indicates implications of changes
- stack policies - protects specific resource within your stack from being unintentionally deleted or updated. Once applied cannot remove, but can update.