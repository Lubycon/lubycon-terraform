data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = var.remote_backend_bucket
    key     = var.vpc_remote_backend_bucket_key
    region  = var.remote_backend_bucket_region
    profile = var.aws_profile
  }
}

