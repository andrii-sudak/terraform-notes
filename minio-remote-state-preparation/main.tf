provider "minio" {
  minio_server   = "127.0.0.1:9000"
  minio_user     = "minioadmin"
  minio_password = "minioadmin"
}

resource "minio_iam_user" "terraform_user" {
  name = "terraform_user"
}

resource "minio_iam_user_policy_attachment" "terraform_user_policies" {
  user_name   = minio_iam_user.terraform_user.id
  policy_name = "readwrite"
}

resource "minio_iam_service_account" "terraform_user_service_account" {
  target_user = minio_iam_user.terraform_user.id
}

output "terraform_user_service_account_access_key" {
  value = minio_iam_service_account.terraform_user_service_account.access_key
}

output "terraform_user_service_account_secret_key" {
  value     = minio_iam_service_account.terraform_user_service_account.secret_key
  sensitive = true
}

resource "minio_s3_bucket" "terraform" {
  bucket = "terraform"
  acl    = "public"
}
