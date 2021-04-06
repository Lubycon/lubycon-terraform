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
variable "vpc_remote_backend_bucket_key" {
  description = "vpc_remote_backend_bucket_key"
}
variable "sg_remote_backend_bucket_key" {
  description = "sg_remote_backend_bucket_key"
}
variable "assets_remote_backend_bucket_key" {
  description = "assets_remote_backend_bucket_key"
}

####################
# CloudFront & S3
####################
variable "namespace" {
  default = "lubycon"
}
variable "name" {
  default = "icons"
}
variable "stage" {
  default = "prod"
}
variable "parent_zone_name" {
  default = "lubycon.io"
}
variable "price_class" {
  default = "PriceClass_All"
}
variable "aliases" {
  default = ["icons.lubycon.io"]
}
variable "default_ttl" {
  default = 0
}
variable "acm_certificate_arn" {
  default = "arn:aws:acm:us-east-1:554707519121:certificate/652be07a-1826-43e6-a66e-1b6c36855be9"
}
variable "minimum_protocol_version" {
  default = "TLSv1.2_2019"
}
variable "tags" {
  default = {
    Product = "Lubycon"
    Stack = "Mgmt"
    Role = "ui-kit-icons"
    Duty = "LubyconAdmin"
  }
}
