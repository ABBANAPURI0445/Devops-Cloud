resource "aws_instance" "web" {
  ami           = "ami-003634241a8fcdec0"
  instance_type = "t2.micro"
  key_name      = "EC2"
  subnet_id     = "${aws_subnet.Public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
  associate_public_ip_address = true


  tags = {
    Name = "test-tf"
  }
}