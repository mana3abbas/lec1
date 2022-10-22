terraform {
  backend "s3" {
    bucket         = "terraa"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraa"
  }
}
