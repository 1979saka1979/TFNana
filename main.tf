
provider "aws" {
 region = "eu-west-2" 

}

resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev-vpc-1"
    vpc_env = "development"
  }
}
resource "aws_subnet" "dev-subnet-1" {
  vpc_id     = aws_vpc.development-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "eu-west-2a"
  tags = {
    Name = "dev-subnet-1"
  }
}
