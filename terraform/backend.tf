terraform {
  backend "s3" {
    bucket = "django-ec2-bucket"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
