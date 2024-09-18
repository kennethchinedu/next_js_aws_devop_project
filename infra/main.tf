#We will be storing our statefile in aws s3 with dynamo db for statelock
terraform {
  backend "s3" {
    bucket = "terraform-state-file-anams"
    dynamodb_table = "lock_files"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "app-deployment" {
  source        = "./module/server"
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b


}