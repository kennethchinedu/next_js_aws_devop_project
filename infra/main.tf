provider "aws" {
  region = "us-east-1"
}

module "app-deployment" {
  source        = "./module/server"
  region_main         = var.region_main
  cidr                = var.cidr
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
  ami                 = var.ami
  instance_type       = var.instance_type
}


output "ec2_public_ip" {
  value = aws_instance.server1.public_ip
}

output "ec2_private_key" {
  value = aws_instance.server1.private_ip
}
