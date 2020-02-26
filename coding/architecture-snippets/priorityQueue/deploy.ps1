aws cloudformation package --template-file template.yaml --s3-bucket nelli-random-artefacts --output-template-file outputtemplate.yaml --profile nelliStudent 


aws cloudformation deploy --template-file outputtemplate.yaml --stack-name archPriorityQueue --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --profile nelliStudent --tags Application=archPriorityQueue
