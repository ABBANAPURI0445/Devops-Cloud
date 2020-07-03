module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "web-servers"
  instance_count         = 2

  ami                    = "ami-0e34e7b9ca0ace12d"
  instance_type          = "t2.micro"
  key_name               = "EC2"
  monitoring             = true
  vpc_security_group_ids = ["sg-efd642b3"]
  subnet_id              = "subnet-3745886a"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}