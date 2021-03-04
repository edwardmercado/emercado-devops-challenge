# package cfn
aws cloudformation package --template ./template.yaml --s3-bucket challenge1-bucket --output json > packaged-template.json --region us-east-1 --profile apper

# deploy cfn
aws cloudformation deploy --template ./packaged-template.json --stack-name emercado-tier-1-cicd-stack  --capabilities CAPABILITY_IAM --region us-east-1 --profile apper