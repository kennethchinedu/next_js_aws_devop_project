
provider "aws" {
  region = "us-east-1"
}

module "app-deployment" {
  source        = "./module/server"

}
