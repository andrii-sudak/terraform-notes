# The bucket and table must be created in advance, manually or automatically
terraform {
  backend "s3" {
    region         = "us-east-1"
    dynamodb_table = "andrii-sudak_terraform_remote_state" # Name of the state lock table
    bucket         = "andrii-sudak-terraform-remote-state"
    key            = "terraform.tfstate" # Name of the state file in the bucket
  }
}
