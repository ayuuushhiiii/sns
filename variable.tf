variable "sns_topic_name" {
  type        = string
  description = "SNS topic name"
}

variable "email_subscribers" {
  type        = list(string)
  description = "List of email subscribers"
}
