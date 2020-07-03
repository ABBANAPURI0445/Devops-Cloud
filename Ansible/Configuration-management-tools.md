##  CM Tools:
  push models
    * ansible
    * salt 
   * Ansible:
   ---------
     * how to setup master and nodes
    Lab setup:
      * take 3  Ec2 machines
         * one Ec2 machine (master)
         * two ec2 machines are nodes 
    * install ansible server in master: 
      reference: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
      ----
        sudo apt update
        sudo apt install software-properties-common
        sudo apt-add-repository --yes --update ppa:ansible/ansible
        sudo apt install ansible
     ----
  Steps: follow these steps in master and nodes 
     
     1. create user 
      adduser username 
      eg: adduser ansible
      
     2. add sudo previlage to user 
      
      visudo 
      ansible ALL=(ALL:ALL) ALL
     
     3. enable password based authentication
    
      vi /etc/ssh/sshd_config
     
       * aws provide by default keypair authentication
       * we need to enable password based authentication
     
     PasswordAuthentication yes
   
     4. restart sshd 
    
     systemctl restart sshd
     or 
     service sshd restart
    

Note: in nodes no need to ansible software

* nodes setup:
   follow above steps 1 to 4




* establish communication between master to node via ssh:
   steps:
    1. generate ssh keys
       Note: login into ansible user (master) [su ansible] \
      __ssh-keygen__
    2. copy the ssh keys from master to node \
      __ssh-copy-id usernamenode@nodeip/dns__ \
      eg: ssh-copy-id ansible@172.31.31.228


### add ip address in ansible control server:
 
 vi /etc/ansible/hosts

 34.217.176.66 \
 34.217.12.157 \
 34.211.159.125 



       
    
    