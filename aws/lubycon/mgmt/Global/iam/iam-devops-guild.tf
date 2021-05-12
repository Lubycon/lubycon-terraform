module "iam_group_with_custom_policies_devops_guild" {
  source = "../../../../modules/iam/modules/iam-group-with-policies"

  name = "DevOpsGuild"

  group_users = []

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]

  custom_group_policies = [
    {
      name = "deny_importants"
      policy = data.aws_iam_policy_document.deny_importants.json
    },
    {
      name = "deny_lubycon_core_resources"
      policy = data.aws_iam_policy_document.deny_lubycon_core_resources.json
    },
  ]
}

data "aws_iam_policy_document" "deny_importants" {
  statement {
    effect = "Deny"
    actions = [
      "iam:AttachRolePolicy",
    ]
    condition {
      test = "ArnEquals"
      variable = "iam:PolicyARN"
      values = [
        "arn:aws:iam::aws:policy/AdministratorAccess",
        "arn:aws:iam::aws:policy/PowerUserAccess"
      ]
    }
    condition {
      test = "ArnEquals"
      variable = "iam:PolicyARN"
      values = [
        "arn:aws:iam::aws:policy/*FullAccess"
      ]
    }
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    actions = [
      "iam:CreateGroup",
      "iam:UpdateGroup",
      "iam:DeleteGroup",
      "iam:CreateAccessKey",
      "iam:UpdateAccessKey",
      "iam:DeleteAccessKey",
      "iam:CreateUser",
      "iam:UpdateUser",
      "iam:DeleteUser",
      "iam:AddUserToGroup",
      "iam:RemoveUserFromGroup",
      "iam:AttachGroupPolicy",
      "iam:PutGroupPolicy",
      "iam:DetachGroupPolicy",
      "iam:AttachUserPolicy",
      "iam:PutUserPolicy",
      "iam:DetachUserPolicy"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    actions = [
      "s3:DeleteBucket",
    ]
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    actions = [
      "route53domains:*",
    ]
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    actions = [
      "organizations:*",
    ]
    resources = ["*"]
  }
}

data "aws_iam_policy_document" "deny_lubycon_core_resources" {
  statement {
    effect = "Deny"
    actions = [
      "workmail:*",
      "workmailmessageflow:*",
    ]
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    actions = [
      "lambda:*",
    ]
    resources = var.lubycon_core_lambda
  }
  statement {
    effect = "Deny"
    actions = [
      "dynamodb:Get*",
      "dynamodb:Update*",
      "dynamodb:Delete*",
      "dynamodb:Describe*",
      "dynamodb:Put*",
      "dynamodb:Scan*",
      "dynamodb:Create*",
      "dynamodb:Export*",
      "dynamodb:Query*",
    ]
    resources = var.lubycon_core_dynamodb
  }
  statement {
    effect = "Deny"
    actions = [
      "logs:*",
    ]
    resources = var.lubycon_core_cloudwatch_logs
  }
  statement {
    effect = "Deny"
    actions = [
      "cloudformation:*",
    ]
    resources = var.lubycon_core_cloudformation
  }
  statement {
    effect = "Deny"
    actions = [
      "s3:*",
    ]
    resources = var.lubycon_core_s3
  }
}
