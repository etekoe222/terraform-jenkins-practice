terraform {
  backend "s3" {
    bucket         = "ec3-memo"
    key            = "jenkinsP/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "richo-r"
  }
}