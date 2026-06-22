# 1. Define the Cloud Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# 2. Build a Security Group (Firewall Rules)
resource "aws_security_group" "web_traffic" {
  name        = "allow_web_traffic"
  description = "Allow inbound HTTP and SSH traffic"

  ingress {
    description = "HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to the internet
  }

  ingress {
    description = "Secure Shell Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # In production, restrict this to your IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 3. Provision a Virtual Ubuntu Linux Server
resource "aws_instance" "ubuntu_web_server" {
  ami                    = "ami-0c7217cdde317cfec" # Standard Ubuntu 22.04 LTS AMI (changes by region)
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_traffic.id]

  tags = {
    Name = "Terraform-Managed-Web-Host"
  }
}
