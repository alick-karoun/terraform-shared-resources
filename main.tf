module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "project-n1-vpc"
  cidr = var.vpc_cidr

  # Deploy across 2 Availability Zones
  azs             = ["${var.aws_region}a", "${var.aws_region}b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24", "10.0.40.0/24"]

  # Internet Gateway & NAT Gateway setup
  enable_nat_gateway   = true
  single_nat_gateway   = true # Set to false for multi-AZ NAT redundancy in production
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Environment = var.environment
    Project     = "N1-Network"
    ManagedBy   = "Terraform"
  }
}