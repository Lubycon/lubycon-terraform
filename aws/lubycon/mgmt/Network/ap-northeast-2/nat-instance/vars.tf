variable "server_name" {
  default = "nat-instance"
}

variable "image_id" {
  default = "ami-03a8bb1ed4424a507"
}

# Until the end AWS free tier
variable "instance_types" {
  default = ["t3.nano"]
}

# Until the end AWS free tier
variable "use_spot_instance" {
  default = false
}
variable "key_name" {
  default = "sysadmin-lubycon"
}

variable "tags" {
  type = map(string)
  default = {
    Product = "Lubycon"
    Stack = "Mgmt"
    Role = "nat"
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
variable "vpc_remote_backend_bucket_key" {
  description = "vpc_remote_backend_bucket_key"
}
variable "sg_remote_backend_bucket_key" {
  description = "sg_remote_backend_bucket_key"
}