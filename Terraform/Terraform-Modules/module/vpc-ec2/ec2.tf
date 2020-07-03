resource "aws_instance" "web" {
  ami           = "${var.imageid}"
  instance_type = "${var.instancetype}"
  key_name      = "${var.keyname}"
  subnet_id     = "${aws_subnet.Public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
  associate_public_ip_address = true
    connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("EC2.pem")}"
    host     = "${aws_instance.web.public_ip}"
  }
     
  tags = {
    Name = "test-tf"
  }
}
