provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile  # Optional: useful if using named profiles from ~/.aws/credentials
}