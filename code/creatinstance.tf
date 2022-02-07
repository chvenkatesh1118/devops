provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami        =  "ami-0d997c5f64a74852c"
  instance_type = "t2.micro"
    subnet_id   = "subnet-0f42b250c3cf1d75c"
    vpc    = "vpc-0bf57a4f41c708816"
    vpc_security_group_ids = "sg-03439c9546a230549"

  tags = {
    Name = "frontend"
  }
}