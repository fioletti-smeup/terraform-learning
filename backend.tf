terraform {
  backend "s3" {
    bucket = "terraform-learning"
    key    = "terraform-state"
    region = "eu-west-3"
  }
}