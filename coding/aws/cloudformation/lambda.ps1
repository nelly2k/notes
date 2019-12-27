# Pacajge and create 
aws cloudformation package --template-file lambda.yaml --s3-bucket nelli-my-money-artefacts --output-template-file outputtemplate.yml --profile nelliStudent 

aws cloudformation deploy --template-file outputtemplate.yml --stack-name labs-lambda --capabilities CAPABILITY_IAM --profile nelliStudent 

# Deploy failed, see events
aws cloudformation describe-stack-events --stack-name labs-lambda  --profile nelliStudent 

# delete stack
aws cloudformation delete-stack --stack-name labs-lambda  --profile nelliStudent 