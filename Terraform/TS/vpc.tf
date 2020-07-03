## VPC
resource "aws_vpc" "network" {
  cidr_block       = "${var.cidr}"
  enable_dns_hostnames = true 
  tags = {
    Name = "myvpc"
  }
}
## IGW
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.network.id}"

  tags = {
    Name = "main"
  }
}
## Subnets
resource "aws_subnet" "main" {
  count = "${length(data.aws_availability_zones.azs.names)}"  #3 0 1 2
  vpc_id     = "${aws_vpc.network.id}"
  availability_zone = "${element(data.aws_availability_zones.azs.names , count.index)}"
  cidr_block = "${element(var.subnetcidr, count.index)}"

  tags = {
    Name = "Subnet-${count.index+1}"
  }
}


