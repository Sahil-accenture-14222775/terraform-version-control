variable "iam_username" {
  description = "Name of IAM user"
  type        = string
  default     = "project4-s3-reader"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "s3_read_policy" {
  description = "S3 read-only IAM policy"
  type        = string

  default = <<-EOT
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "s3:ListBucket"
        ],
        "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME"
      },
      {
        "Effect": "Allow",
        "Action": [
          "s3:GetObject"
        ],
        "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/*"
      }
    ]
  }
  EOT
}

variable "policy_json" {
  description = "S3 read-only IAM policy"
  type        = string
}
