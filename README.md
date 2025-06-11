
# SnippitBin


## About

### Built With

- Terraform IaC
- AWS
- NodeJS
- Angular

## Getting Started

### Prerequisites

### Terraform

#### Pre setup (one time)

##### S3 bucket
```
aws s3api create-bucket \
  --bucket my-terraform-state-bucket \
  --region us-west-2 \
  --create-bucket-configuration LocationConstraint=us-west-2
```

##### DyanmoDB Table
```
aws dynamodb create-table \
  --table-name terraform-locks \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST
```

#### Initialize Terraform
```
terraform init
```