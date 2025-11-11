output "instance_ami" {
  value = aws_instance.web_test.ami
}

output "instance_arn" {
  value = aws_instance.web_test.arn
}
