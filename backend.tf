# configure backend to store terraform statefile and lock it using dynamo-db

terraform {
  backend "s3" {
    bucket         = "tf-rem-bkend-s3-bkt-for-stfile"
    key            = "eks.terraform.tfstate"
    region         = "ap-south-1"
    # encrypt        = true
    # dynamodb_table = "terraform-lock"
  }
}