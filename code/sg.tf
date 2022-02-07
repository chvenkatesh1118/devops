
resource "aws_security_group" "myall" {
  name        = "myall"
  description = "Allow all"
  vpc_id      = aws_vpc.vpc0.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "ssh"
    cidr_blocks      = [aws_vpc.vpc0.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.vpc0.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "myall"
  }
}
