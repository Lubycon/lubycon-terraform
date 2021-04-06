####################
# lubyon.io
####################
variable "icons_lubycon_io_bucket" {
  default = "lubycon.io"
}

####################
# AWS Configure
####################
variable "aws_region" {
}
variable "aws_profile" {
}
provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

####################
# Remote Data Source
####################
variable "remote_backend_bucket" {
  description = "remote_backend_bucket"
  default = "lubycon-devops-mgmt"
}
variable "remote_backend_bucket_region" {
  description = "remote_backend_bucket_region"
  default = "ap-northeast-2"
}
variable "route53_remote_backend_bucket_key" {
  description = "route53_remote_backend_bucket_key"
}