provider "aws" {
  region = var.region
}

resource "aws_instance" "django-ansible" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name
  vpc_id        = "vpc-034ee05ba45e84d13S" 
  
}


output "instance_id" {
  value = aws_instance.django-ansible.id
}

output "public_ip" {
  value = aws_instance.django-ansible.public_ip
}
