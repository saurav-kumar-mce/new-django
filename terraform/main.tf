provider "aws" {
  region = var.region
}

resource "aws_instance" "django" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name
  
}


output "instance_id" {
  value = aws_instance.django.id
}