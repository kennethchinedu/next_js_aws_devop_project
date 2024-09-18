terraform {
  backend "s3" {
    bucket = "terraform-state-file-anams"
    #dynamodb_table = "lock_files"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_s3_bucket" "mybucket" {
  bucket = "terraform-state-file-anams"
  versioning {
    enabled = true
  }
}