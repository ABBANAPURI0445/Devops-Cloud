provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "dev"
  instance_count         = 2

  ami                    = "ami-0e34e7b9ca0ace12d"
  instance_type          = "t2.micro"
  key_name               = "EC2"
  monitoring             = true
  vpc_security_group_ids = ["sg-0d46403249df84582"]
  subnet_id              = "subnet-05d15c55ca4dfff36"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}