variable "content" {
  type = map(any)
  default = {
    "dev"  = "DEV ENVIRONMENT"
    "test" = "TEST ENVIRONMENT"
    "prod" = "PROD ENVIRONMENT"
  }
}
