
provider "aws" {
  region = "us-east-1"
}

module "app-deployment" {
  source        = "./module/server"
#  ami           = "ami-0a0e5d9c7acc336f1"
#  instance_type = "t2.micro"
}
