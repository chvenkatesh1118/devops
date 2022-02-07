resource "aws_vpc" "vpc0" {
  cidr_block       = "10.1.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "vpc1"
  }
}
#########################################################################################################

##########################################################################################################
resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.vpc0.id
  cidr_block = "10.1.0.0/26"

  tags = {
    Name = "sub1"
  }
}

###########################################################################################
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami        =  "ami-0d997c5f64a74852c"
  instance_type = "t2.micro"
   vpc_security_group_ids = aws_security_group.myall.id
     subnet_id   = aws_subnet.sub1.id



  tags = {
    Name = "frontend"
  }
}