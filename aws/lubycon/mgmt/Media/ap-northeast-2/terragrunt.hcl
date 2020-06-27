terraform {
  extra_arguments "custom_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "destroy",
      "refresh"
    ]
    arguments = [
      "-var", "aws_region=ap-northeast-2",
      "-var", "aws_profile=lubycon-mgmt",
      "-var", "sg_remote_backend_bucket_key=tfstate/mgmt/Network/ap-northeast-2/sg/terraform.tfstate",
      "-var", "vpc_remote_backend_bucket_key=tfstate/mgmt/Network/ap-northeast-2/vpc/terraform.tfstate",
      "-var", "assets_remote_backend_bucket_key=tfstate/mgmt/Network/ap-northeast-2/vpc/terraform.tfstate"
    ]
  }
}
remote_state {
  backend = "s3"
  config = {
    bucket = "lubycon-devops-mgmt"
    key = "tfstate/mgmt/Media/ap-northeast-2/${path_relative_to_include()}/terraform.tfstate"
    region = "ap-northeast-2"
    encrypt = true
    dynamodb_table = "lubyon-tfstate-lock"
    profile = "lubycon-mgmt"
  }
}
