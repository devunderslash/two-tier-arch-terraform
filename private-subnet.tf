resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.two_tier_terraform_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "private subnet 1"
  }
}