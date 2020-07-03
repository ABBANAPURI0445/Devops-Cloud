
## create vpc
resource "aws_vpc" "network" {
  cidr_block       = "${var.cidr}"
  enable_dns_hostnames = true

  tags = {
    Name = "vpctf"
  }
}
## create internet gateway and attach to vpc
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.network.id}"
  tags = {
    Name = "IGW"
  }
}
## public Route table
resource "aws_route_table" "PublicRT" {
  vpc_id = "${aws_vpc.network.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  

  tags = {
    Name = "PublicRoute-Table"
  }
}
## private Route table
resource "aws_route_table" "PrivateRT" {
  vpc_id = "${aws_vpc.network.id}"

  
  tags = {
    Name = "Private_Route_table"
  }
}

## create subnets
resource "aws_subnet" "Public-subnet" {
  vpc_id     = "${aws_vpc.network.id}"
  cidr_block = "${var.Public-subnet-CIDR}"
  availability_zone = "${var.az-a}"
  tags = {
    Name = "Public-subnet"
  }
}
resource "aws_subnet" "Private-subnet" {
  vpc_id     = "${aws_vpc.network.id}"
  cidr_block = "${var.Private-subnet-CIDR}"
  availability_zone = "${var.az-b}"
  tags = {
    Name = "Private-subnet"
  }
}
resource "aws_subnet" "Private-subnet-1" {
  vpc_id     = "${aws_vpc.network.id}"
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "Private-subnet-1"
  }
}

## association Route tables
resource "aws_route_table_association" "public-association" {
  subnet_id      = "${aws_subnet.Public-subnet.id}"   ## public subnetID
  route_table_id = "${aws_route_table.PublicRT.id}"   ## public RT id
}
resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.Private-subnet.id}"  ## Private subnet id
  route_table_id = "${aws_route_table.PrivateRT.id}"
}


resource "aws_security_group" "ssh" {
  name        = "enable ssh"
  description = "enable 22 port"
  vpc_id      = "${aws_vpc.network.id}"

  ingress {
    description = "enable 22 port for ec2 "
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "enable-ssh"
  }
}
resource "aws_security_group" "mysql" {
  name        = "for mysql"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.network.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mysql"
  }
}
output "vpc_id" {
  value = "${aws_vpc.network.id}"
}
output "ec2-publicip" {
  value = "${aws_instance.web.public_ip}"
}

   