# Prerequisite: 
# Create the the following in the AWS console UI in the region: ap-south-1
# 1. create s3 bucket: tf-rem-bkend-s3-bkt-for-stfile 
# 2. create dynamodb table: terraform-lock with Partition Key: LockID and type String

# configure backend to store terraform statefile and lock it using dynamo-db
terraform {
  backend "s3" {
    bucket         = "tf-rem-bkend-s3-bkt-for-stfile"
    key            = "eks.terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}