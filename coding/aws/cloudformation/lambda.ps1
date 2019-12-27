# Pacajge and create 
aws cloudformation package --template-file lambda.yaml --s3-bucket nelli-my-money-artefacts --output-template-file outputtemplate.yml --profile nelliStudent 

aws cloudformation deploy --template-file outputtemplate.yml --stack-name labs-lambda --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --profile nelliStudent 

# Deploy failed, see events
aws cloudformation describe-stack-events --stack-name labs-lambda  --profile nelliStudent 

$events = aws cloudformation describe-stack-events --stack-name labs-lambda  --profile nelliStudent | ConvertFrom-Json

$events.StackEvents.Where({$_.ResourceStatus -eq "CREATE_FAILED"})
$d | ConvertFrom-Json | select StackEvents  |  where ResourceStatus -eq "REVIEW_IN_PROGRESS" | ConvertTo-Json

# delete stack
aws cloudformation delete-stack --stack-name labs-lambda  --profile nelliStudent 