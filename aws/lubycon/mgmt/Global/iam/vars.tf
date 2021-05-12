####################
# lubyon core resources
####################
variable "icons_lubycon_io_bucket" {
  default = "lubycon.io"
}

variable "lubycon_core_s3" {
  default = [
    "arn:aws:s3:::lubycon-demo-day-media",
  ]
}
variable "lubycon_core_lambda" {
  default = [
    "arn:aws:lambda:*:*:function:mentoring*",
    "arn:aws:lambda:*:*:function:migrationDynamoToAirtable-prod-migrationDynamoToAirtable",
    "arn:aws:lambda:*:*:function:serverlessrepo-workmail*",
  ]
}
variable "lubycon_core_dynamodb" {
  default = [
    "arn:aws:dynamodb:*:*:table/mentoring-project-apply-2nd",
    "arn:aws:dynamodb:*:*:table/mentoring-project-apply-3nd",
  ]
}
variable "lubycon_core_cloudwatch_logs" {
  default = [
    "arn:aws:logs:us-west-2:554707519121:log-group:/aws/lambda/serverlessrepo-workmail*",
  ]
}
variable "lubycon_core_cloudformation" {
  default = [
    "arn:aws:cloudformation:*:*:stack/mentoring*",
    "arn:aws:cloudformation:*:*:stack/serverlessrepo-workmail*",
  ]
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