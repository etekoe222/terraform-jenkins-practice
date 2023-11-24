resource "aws_security_group" "sg2" {
  name        = "eden-sg-dev"
  description = "Allow  http"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description = "allow http"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "Dev"
  }

}