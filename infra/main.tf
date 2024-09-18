
provider "aws" {
  region = "us-east-1"
}

module "app-deployment" {
  source        = "./module/server"
  ami           = var.ami
  instance_type = var.instance_type
  cidr          = var.cidr
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
  region_main   = var.region_main
}
