module "sg-pub-ec2-nat-instance" {
  #########Keep This Configration, it can be modifying other environment#########
  source      = "../../../../../modules/sg"
  aws_region  = var.aws_region
  aws_profile = var.aws_profile
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  #########Keep This Configration, it can be modifying other environment#########
  name = format(
    "%s-sg-pub-ec2-nat-instance",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )
  description = format(
    "%s-sg-pub-ec2-nat-instance",
    data.terraform_remote_state.vpc.outputs.vpc_name_prefix,
  )

  ingress_with_cidr_blocks = [
    {
      rule        = "ssh-tcp"
      cidr_blocks = "0.0.0.0/0"
      description = "bastion-ssh-tcp"
    },
    {
      rule        = "all-tcp"
      cidr_blocks = data.terraform_remote_state.vpc.outputs.vpc_cidr_block
      description = "lubycon-mgmt-vpc-cidr-all-tcp-traffic"
    },
  ]
  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "all-traffic"
    },
  ]
}

output "sg-pub-ec2-nat-instance-security_group_id" {
  value = module.sg-pub-ec2-nat-instance.this_security_group_id
}
