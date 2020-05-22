terraform {
    source = "${get_parent_terragrunt_dir()}/../../../../modules/vpc"
}
include {
    path = find_in_parent_folders()
}

inputs = {
    #Pre-Configuration
    aws_region = "ap-northeast-2"
    aws_profile = "lubycon-mgmt"

    name = "lubycon-mgmt-an2-vpc"
    cidr = "10.0.0.0/16"
    azs                 = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
    public_subnets      = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
    private_subnets     = ["10.0.48.0/20", "10.0.64.0/20", "10.0.80.0/20"]

    enable_nat_gateway = true
    enable_vpn_gateway = false
    enable_dns_hostnames = true

    enable_s3_endpoint       = true
    enable_dynamodb_endpoint = true

    tags = {
      Duty = "Lubycon"
      Stack = "Mgmt"
      Role = "network"
      Product = "Lubycon"
    }
}
