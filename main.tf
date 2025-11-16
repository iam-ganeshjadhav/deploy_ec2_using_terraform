provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "basic" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

output "public_ip" {
  value = aws_instance.basic.public_ip
}