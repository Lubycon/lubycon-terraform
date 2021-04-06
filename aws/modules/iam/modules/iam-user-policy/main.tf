resource "aws_iam_user_policy" "user_policy" {
  name        = var.name
  user        = var.iam_user_name

  policy = var.policy
}

