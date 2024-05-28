module "dev_aws_ec2_instance" {
  source      = "../modules/aws_ec2_instance"
  environment = "dev"
}
