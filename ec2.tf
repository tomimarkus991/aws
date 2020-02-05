resource "aws_instance" "web" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.nano"

  key_name = "tpt-key"

  tags = {
    Name = "Suur ja uhke masin"
  }
 user_data = file("${path.module}/ec2-setup.sh")
}

output "web_id" {
  value = aws_instance.web.id
}


output "web_ip" {
  value = aws_instance.web.public_ip
}
