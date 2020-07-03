resource "aws_instance" "web" {
  ami           = "${var.imageid}"
  instance_type = "${var.instancetype}"
  key_name      = "${var.keyname}"
  subnet_id     = "${var.ps}"
  vpc_security_group_ids = ["${var.sg}"]
  associate_public_ip_address = true
    connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("EC2.pem")}"
    host     = "${aws_instance.web.public_ip}"
  }
     provisioner "remote-exec" {
       inline = [
      "sudo apt-get update",
      "sudo apt-get install tomcat8 -y",
    ]
     }
  tags = {
    Name = "test-tf"
  }
}
