module "nat" {
  source      = "../../../../../modules/nat-instance"

  name                        = format("%s-%s", data.terraform_remote_state.vpc.outputs.vpc_name_prefix, var.server_name)
  vpc_id                      = data.terraform_remote_state.vpc.outputs.vpc_id
  public_subnet               = data.terraform_remote_state.vpc.outputs.public_subnets[0]
  private_subnets_cidr_blocks = data.terraform_remote_state.vpc.outputs.private_subnets_cidr_blocks
  private_route_table_ids     = data.terraform_remote_state.vpc.outputs.private_route_table_ids
  security_groups             = [
    data.terraform_remote_state.sg.outputs.sg-pub-security_group_id,
    data.terraform_remote_state.sg.outputs.sg-pub-ec2-security_group_id,
    data.terraform_remote_state.sg.outputs.sg-pub-ec2-nat-instance-security_group_id,
  ]
  image_id                    = var.image_id
  instance_types              = var.instance_types
  use_spot_instance           = var.use_spot_instance
  key_name                    = var.key_name
  tags                        = var.tags
}