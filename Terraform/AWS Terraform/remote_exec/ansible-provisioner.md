# method 1:
   launch ec2 machine
   install ansible
   create image -- imageid

   * EC2 
     use ansible image id
     connection
      clone playbook from github
      ansible-playbook playbook.yaml

# by using remote_exec:
    provisioner "remote-exec" {
    inline = [
     "sudo apt update",
 "sudo apt install software-properties-common -y"
"sudo apt-add-repository --yes --update ppa:ansible/ansible"
"sudo apt install ansible -y"
    ]
  }
   provisioner "remote-exec" {
    inline = [
     "git clone url",
     "ansible-playbook playbook.yaml"
    ]
  }
