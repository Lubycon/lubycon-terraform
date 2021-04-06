output "id" {
  description = "The policy's ID"
  value       = aws_iam_user_policy.user_policy.id
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_user_policy.user_policy.name
}

output "policy" {
  description = "The policy document"
  value       = aws_iam_user_policy.user_policy.policy
}

