resource "aws_s3_bucket" "mybucket" {
  bucket = "terraform-state-file-anams"
  versioning {
    enabled = true
  }
}

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
