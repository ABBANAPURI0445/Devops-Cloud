provider "aws" {
   region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
}
module "mynetwork" {
  source = "../module/vpc"
  vpcid = "${module.mynetwork.vpc_id}"
  
}
module "ec2" {
  source = "../module/ec2"
  ## subnet-id these are belongs to mynetwork module
  ## security-id
  PS = "${module.mynetwork.Pulicsubent}"
  sg-ssh = "${module.mynetwork.sg}"
  
}




