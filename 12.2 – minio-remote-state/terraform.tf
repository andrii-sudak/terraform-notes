# The bucket and table must be created in advance, manually or automatically
terraform {
  backend "s3" {
    endpoint   = "http://127.0.0.1:9000"
    access_key = "xdjxcg2gf4gwIrCwcwPJ"
    secret_key = "2yuerFFWpcz3Pz4eD1cxpoVUPPcTAEAnmA3KzCL2"
    bucket     = "terraform"
    key        = "terraform.tfstate" # Name of the state file in the bucket
    region     = "main"
    # Skip AWS related checks and validations
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    # Enable path-style S3 URLs (https://<HOST>/<BUCKET> https://developer.hashicorp.com/terraform/language/settings/backends/s3#use_path_style
    force_path_style = true
  }
}
