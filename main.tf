terraform {
  required_version = ">= 1.0"
}

resource "aws_sns_topic" "alerts" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "email" {
  for_each = toset(var.email_subscribers)
  topic_arn = aws_sns_topic.alerts.arn
  protocol  = "email"
  endpoint  = each.value
}
