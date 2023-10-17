terraform {
  backend "s3" {
    bucket = "mvsphani-gitops"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}