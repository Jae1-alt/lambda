variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region."
}

variable "app_name" {
  type        = string
  default     = "lab1-image-processor"
}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "aurora_username" {
  type      = string
  sensitive = true
}

variable "aurora_password" {
  type      = string
  sensitive = true
}
