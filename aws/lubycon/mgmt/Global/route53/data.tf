data "terraform_remote_state" "route53" {
  backend = "s3"
  config = {
    bucket  = var.remote_backend_bucket
    key     = var.route53_remote_backend_bucket_key
    region  = var.remote_backend_bucket_region
    profile = var.aws_profile
  }
}