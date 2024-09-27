provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-08718895af4dfa033" # change this
  subnet_id = "subnet-03786bc2be3e36d1f" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "abhishek-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
