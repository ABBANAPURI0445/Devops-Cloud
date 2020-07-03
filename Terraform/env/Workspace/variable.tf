variable "acceskey" {
  type    = "string"
  
  
}
variable "secretkey" {
  type    = "string"
  
 
}
variable "region" {
  type    = "string"
 
}
variable "az-a" {
  type    = "string"
  default = "us-west-2a"
}
variable "az-b" {
  type    = "string"
  default = "us-west-2b"
}
variable "cidr" {
  type    = "string"
  default = "192.168.0.0/16"
}
variable "Public-subnet-CIDR" {
  type    = "string"
  default = "192.168.0.0/24"
}
variable "Private-subnet-CIDR" {
  type    = "string"
  default = "192.168.1.0/24"
}

#variable "vpcname" {
 # type = "string"
#  default = "myvpc-${terraform.workspace}"
#}
## variables and backend not support interpolation
 ##soluation == > locals
 locals {
  vpcname = "myvpc-${terraform.workspace}"
}
variable "instancetype" {
  
}
variable "imageid" {

}





