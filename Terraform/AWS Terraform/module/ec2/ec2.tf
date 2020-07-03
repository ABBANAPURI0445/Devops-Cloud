resource "aws_instance" "web" {
  ami           = "ami-003634241a8fcdec0"
  instance_type = "t2.micro"
  key_name      = "EC2"
  subnet_id     = "${var.ps}"
  vpc_security_group_ids = ["${var.sg}"]
  associate_public_ip_address = true


  tags = {
    Name = "test-tf"
  }
}

