variable "acceskey" {
  type    = "string"
  default = "AKIAXIOQ7O2FSAGUKYOE"
}
variable "secretkey" {
  type    = "string"
  default = "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"
}
variable "region" {
  type    = "string"
  default = "us-west-2"
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

variable "imageid" {
  type    = "string"
  default = "ami-008c6427c8facbe08"
  
}

variable "keyname" {
  type    = "string"
  default = "EC2"
}
variable "instancetype" {
  type    = "string"
  default = "t2.micro"
}
variable "ps" {

}
variable "sg" {
  
}





variable "public-subnet" {
  type    = "string"
  default = "aws_subnet.Public-subnet.id"
}
variable "sg-ssh" {
  type    = "string"
  default = "aws_security_group.ssh.id"
}




