module "iam_user" {
  source = "../../../../modules/iam/modules/iam-user"

  name = "lubycon-github-actions"
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_policy" {
  source = "../../../../modules/iam/modules/iam-user-policy"

  name          = "github-actions-policy"
  path          = "/"
  iam_user_name = module.iam_user.this_iam_user_name

  policy = <<EOF
{
   "Version":"2012-10-17",
   "Statement":[
      {
         "Effect":"Allow",
         "Action": "s3:ListAllMyBuckets",
         "Resource":"arn:aws:s3:::*"
      },
      {
         "Effect":"Allow",
         "Action":["s3:ListBucket","s3:GetBucketLocation"],
         "Resource":"arn:aws:s3:::lubycon-prod-icons-origin"
      },
      {
         "Effect":"Allow",
         "Action":[
            "s3:PutObject",
            "s3:PutObjectAcl",
            "s3:GetObject",
            "s3:GetObjectAcl",
            "s3:DeleteObject"
         ],
         "Resource":"arn:aws:s3:::lubycon-prod-icons-origin/*"
      }
   ]
}
EOF
}