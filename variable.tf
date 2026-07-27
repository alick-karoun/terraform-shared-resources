//customize the VPC CIDR, domain name, and subnets

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region for deployment"
}

variable "project_name" {
  type        = string
  default     = "my-app"
  description = "Project prefix for resource tagging"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Base CIDR block for the custom VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "CIDR blocks for Public Subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
  description = "CIDR blocks for Private Subnets"
}

variable "domain_name" {
  type        = string
  default     = "example.com" # Replace with your actual domain name
  description = "Domain name for the Route53 Hosted Zone"
}
