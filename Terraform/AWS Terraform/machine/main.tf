provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
}
module "myvpc" {
  source = "../module/vpc"
  vpcid = "${module.myvpc.vpcid}"


}
module "ec2" {
  source = "../module/ec2"
  ps = "${module.myvpc.Public-subnet}"
  sg = "${module.myvpc.sg-ssh}"
}




