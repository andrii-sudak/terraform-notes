provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraformStateS3Bucket" {
  bucket        = "andrii-sudak-terraform-remote-state"
  force_destroy = false # Change to true if want to delete a non-empty bucket
}

resource "aws_dynamodb_table" "terraformStateDynamodbTable" {
  name           = "andrii-sudak_terraform_remote_state"
  hash_key       = "LockID"
  read_capacity  = 1
  write_capacity = 1
  attribute {
    name = "LockID"
    type = "S"
  }
}
