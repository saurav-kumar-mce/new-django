provider "aws" {
  region = var.region
}

resource "aws_instance" "django-ansible" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = "subnet-0a561788a7122d0d0"
  vpc_security_group_ids = ["sg-0e97eb78379644699"]
  
}


output "instance_id" {
  value = aws_instance.django-ansible.id
}

output "public_ip" {
  value = aws_instance.django-ansible.public_ip
}
