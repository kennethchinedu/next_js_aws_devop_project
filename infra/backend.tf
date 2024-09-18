#We will be storing our statefile in aws s3 with dynamo db for statelock
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

<<<<<<< HEAD
# resource "aws_dynamodb_table" "lockfile" {
#   name         = "lock_files"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }
=======
#resource "aws_dynamodb_table" "lockfile" {
# name         = "lock_files"
# billing_mode = "PAY_PER_REQUEST"
#  hash_key     = "LockID"
#
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}
>>>>>>> 1c405b4c6bf253f245da7e960c21fa66e6df5453
