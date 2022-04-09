resource "aws_internet_gateway" "two_tier_ig" {
  vpc_id = aws_vpc.two_tier_terraform_vpc.id

  tags = {
    Name = "two tier architecture internet gateway"
  }
}