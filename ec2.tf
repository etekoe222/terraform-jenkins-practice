resource "aws_instance" "jenkins_instance" {
  ami                    = "ami-0230bd60aa48260c6"
  

  user_data = file("userdata.sh")
  #  key_name = "ec2-demo"
  instance_type = "t2.micro"
  tags = {
    Name = "jenkins_practice"
  }
}
