The simplest example of creating the necessary resources to configure a remote Terraform state on AWS S3 with a locked status on DynamoDB.

It will be better with ACLs, encryption and backups.

After creating this resource, you can configure the Terraform to use this remote state configuration.

`terraform.tf`

```hcl
terraform {
  backend "s3" {
    region         = "us-east-1"
    dynamodb_table = "andrii-sudak-terraform-remote-state" # Name of the state lock table
    bucket         = "andrii-sudak-terraform-remote-state"
    key            = "terraform.tfstate" # Name of the state file in the bucket
  }
}

```
