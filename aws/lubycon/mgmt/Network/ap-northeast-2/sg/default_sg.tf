module "sg-pub" {
  #########Keep This Configration, it can be modifying other environment#########
  ## Source Module Path
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "All Traffic"
    },
  ]
}

output "sg-pub-security_group_id" {
  value = module.sg-pub.this_security_group_id
}

module "sg-pri" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pri",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pri",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "All Traffic"
    },
  ]
}

output "sg-pri-security_group_id" {
  value = module.sg-pri.this_security_group_id
}

module "sg-db" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-db",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-db",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "All Traffic"
    },
  ]
}

output "sg-db-security_group_id" {
  value = module.sg-db.this_security_group_id
}

module "sg-pub-xelb" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-xelb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-xelb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pub-xelb-security_group_id" {
  value = module.sg-pub-xelb.this_security_group_id
}

module "sg-pub-xalb" {
  #########Keep This Configration, it can be modifying other environment#########
  ## Source Module Path
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-xalb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-xalb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pub-xalb-security_group_id" {
  value = module.sg-pub-xalb.this_security_group_id
}

module "sg-pub-xnlb" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-xnlb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-xnlb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pub-xnlb-security_group_id" {
  value = module.sg-pub-xnlb.this_security_group_id
}

module "sg-pub-ec2" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-ec2",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-ec2",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pub-ec2-security_group_id" {
  value = module.sg-pub-ec2.this_security_group_id
}

module "sg-pub-ec2-vpn" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-ec2-vpn",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-ec2-vpn",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pub-ec2-vpn-security_group_id" {
  value = module.sg-pub-ec2-vpn.this_security_group_id
}

module "sg-pri-ec2" {
  #########Keep This Configration, it can be modifying other environment#########
  ## Source Module Path
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pri-ec2",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pri-ec2",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pri-ec2-security_group_id" {
  value = module.sg-pri-ec2.this_security_group_id
}

module "sg-pri-ielb" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pri-ielb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pri-ielb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pri-ielb-security_group_id" {
  value = module.sg-pri-ielb.this_security_group_id
}

module "sg-pri-ialb" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pri-ialb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pri-ialb",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pri-ialb-security_group_id" {
  value = module.sg-pri-ialb.this_security_group_id
}

module "sg-pri-lambda" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pri-lambda",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pri-lambda",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-pri-lambda-security_group_id" {
  value = module.sg-pri-lambda.this_security_group_id
}

module "sg-db-redis" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-db-redis",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-db-redis",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  ingress_with_cidr_blocks = [
  ]
}

output "sg-db-redis-security_group_id" {
  value = module.sg-db-redis.this_security_group_id
}

module "sg-db-mysql" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-db-mysql",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-db-mysql",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-db-mysql-security_group_id" {
  value = module.sg-db-mysql.this_security_group_id
}

module "sg-db-aurora" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-db-aurora",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-db-aurora",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
  ]
}

output "sg-db-aurora-security_group_id" {
  value = module.sg-db-aurora.this_security_group_id
}

