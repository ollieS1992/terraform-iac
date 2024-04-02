# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "testlab-terraform-remote-state"
    key       = "cloudwatch-demo.tfstate"
    region    = "eu-west-2"
    profile   = "terraform"
  }
}