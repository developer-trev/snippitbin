terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"    # Must exist already
    key            = "dev/terraform.tfstate"        # Path within the bucket
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"              # Must exist for state locking
    encrypt        = true
  }
}