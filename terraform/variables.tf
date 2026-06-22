variable "aws_region" {
  description = "The AWS region to deploy infrastructure into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The virtual hardware size of our server"
  type        = string
  default     = "t2.micro" # Free-tier eligible size
}
