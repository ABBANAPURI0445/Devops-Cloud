variable "cidr" {
    type = "string"
    default = "192.168.0.0/16"
}
variable "subnetcidr" {
    type = "list"
    default = ["192.168.0.0/24","192.168.1.0/24","192.168.2.0/24"]
}
#variable "azs" {
  #  type = "list"
  #  default = ["us-west-2a","us-west-2b","us-west-2c"]
#}
data "aws_availability_zones" "azs" {
  state = "available"
}
variable "region"{
    default = "us-east-2"
}

