####################
# lubyon.io
####################
variable "lubycon_io_domain" {
  default = "lubycon.io"
}

####################
# storybook.lubyon.io
####################
variable "storybook_lubycon_io_domain" {
  default = "storybook.lubycon.io"
}

####################
# alpha.lubyon.io
####################
variable "alpha_lubycon_io_domain" {
  default = "alpha.lubycon.io"
}


####################
# General
####################
variable "lubycon_io_github_pages_domain" {
  default = "lubycon.github.io"
}
variable "github_pages_ip_addresses"{
  default = ["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153",]
}

variable "tags" {
  type = map(string)
  default = {
    Product = "Lubycon"
    Stack = "Mgmt"
    Role = "domain"
    Duty = "LubyconAdmin"
  }
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