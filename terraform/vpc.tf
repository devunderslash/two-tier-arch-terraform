resource "aws_vpc" "two_tier_terraform_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "two tier terraform vpc"
  }
}