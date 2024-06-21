output "user_name" {
  value       = aws_iam_user.k10-user.name
  description = "IAM user name"
}

output "user_arn" {
  value       = aws_iam_user.k10-user.arn
  description = "The ARN assigned by AWS for this user"
}

output "access_key_id" {
  value       = aws_iam_access_key.k10-user.id
  description = "The access key ID"
}

output "secret_access_key" {
  sensitive   = true
  value       = aws_iam_access_key.k10-user.secret
  description = "The secret access key. This will be written to the state file in plain-text"
}
