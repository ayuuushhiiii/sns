output "sns_topic_arn" {
  description = "ARN of the SNS topic created"
  value       = aws_sns_topic.alerts.arn
}

output "sns_topic_name" {
  description = "SNS topic name"
  value       = aws_sns_topic.alerts.name
}

output "email_subscribers" {
  description = "List of email subscribers configured"
  value       = keys(aws_sns_topic_subscription.email)
}
