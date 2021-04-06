# iam-policy

Creates IAM policy.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.23 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| name | The name of the policy | `string` | `""` | no |
| policy | The path of the policy in IAM (tpl file) | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The policy's ID |
| name | The name of the policy |
| policy | The policy document |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
