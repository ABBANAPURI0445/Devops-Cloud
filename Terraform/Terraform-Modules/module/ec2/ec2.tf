resource "aws_instance" "web" {
  ami           = "${var.imageid}"
  instance_type = "${var.instancetype}"
  key_name      = "${var.keyname}"
  subnet_id     = "${var.PS}"
  vpc_security_group_ids = ["${var.sg-ssh}"]
  associate_public_ip_address = true
  
     
  tags = {
    Name = "test-tf"
  }
}
