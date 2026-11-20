# Create IAM User
resource "aws_iam_user" "s3_reader" {
  name = var.iam_username

  tags = {
    Name        = var.iam_username
    Environment = "Capstone"
    Project     = "Project-4"
  }
}

# Attach S3 Read Policy
resource "aws_iam_user_policy" "s3_read_access" {
  name = "S3ReadOnlyPolicy"
  user = aws_iam_user.s3_reader.name

  policy = replace(
    var.s3_read_policy,
    "YOUR_BUCKET_NAME",
    var.s3_bucket_name
  )
}



resource "aws_iam_user" "project_user" {
  name = var.iam_username
}

resource "aws_iam_user_policy" "s3_read_policy" {
  name   = "S3ReadOnlyPolicy"
  user   = aws_iam_user.project_user.name
  policy = var.policy_json
}

# Project 6: Version Control Infrastructure update
