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
      "sudo apt-get update",
      "sudo apt-get install tomcat8 -y",
      "sudo wget https://jar-war.s3.amazonaws.com/gameoflife.war && sudo  cp gameoflife.war /var/lib/tomcat8/webapps",
      "sudo systemctl restart tomcat8"
    ]
     }
    
  tags = {
    Name = "test-tf"
  }
}
resource "aws_instance" "apache2" {
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
    host     = "${aws_instance.apache2.public_ip}"
  }
 #  provisioner "file" {
 #   content     = "<?php phpinfo(); ?>"
 #   destination = "/var/www/html/info.php"
 # }


     provisioner "remote-exec" {
       inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
      "sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y",
      "sudo systemctl restart apache2"
    ]
     }
     provisioner "file" {
      content        = "<?php phpinfo(); ?>"
    destination = "/var/www/html/info.php"
  }
    
  tags = {
    Name = "web-apache2"
  }
}
