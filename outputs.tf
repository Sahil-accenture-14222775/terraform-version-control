output "iam_username" {
  value = aws_iam_user.project_user.name
}

output "iam_user_arn" {
  value = aws_iam_user.s3_reader.arn
}

output "attached_policy_name" {
  value = aws_iam_user_policy.s3_read_access.name
}
