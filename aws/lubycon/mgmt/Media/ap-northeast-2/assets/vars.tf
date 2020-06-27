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
  type = string
  default = "lubycon"
}

variable "name" {
  type = string
  default = "assets"
}

variable "stage" {
  type = string
  default = "prod"
}

variable "parent_zone_name" {
  type = string
  default = ""
}
