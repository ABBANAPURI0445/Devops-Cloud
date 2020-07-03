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
  
     provisioner "remote-exec" {
       inline = [
      "sudo apt update",
"sudo apt install software-properties-common -y",
"sudo apt-add-repository --yes --update ppa:ansible/ansible",
"sudo apt install ansible -y"
    ]
    
     }
     provisioner "remote-exec" {
    inline = [
      "git clone https://github.com/NareshAbbanapuri/gol-tf.git",
      "cd gol-tf && ansible-playbook gol.yaml",
    ]
    
  }
    
  tags = {
    Name = "test-tf"
  }
}

