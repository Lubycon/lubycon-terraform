provider "aws" {
  region = "eu-west-1"
}

##############
# IAM account
##############
module "iam_user" {
  source = "../../modules/iam-user"

  name = "vasya.pupkin4"

  create_iam_user_login_profile = false
  create_iam_access_key         = true
  permissions_boundary          = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:*",
        "s3:*",
        "iam:CreateServiceLinkedRole",
        "iam:GenerateCredentialReport",
        "iam:GenerateServiceLastAccessedDetails",
        "iam:Get*",
        "iam:List*",
        "iam:PassRole",
        "iam:SimulateCustomPolicy",
        "iam:SimulatePrincipalPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
