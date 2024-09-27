terraform {
  backend "s3" {
    bucket         = "abhishek-s3-demo-xyz" # change this
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
