provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FWSMZENPD"
  secret_key = "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"
}
resource "aws_vpc" "vpctf" {
  cidr_block       = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}