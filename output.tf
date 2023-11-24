output "aws_instance_type" {
  value = aws_instance.jenkins_instance.id
}
output "public_ip" {
  value = aws_instance.jenkins_instance.public_ip

}


