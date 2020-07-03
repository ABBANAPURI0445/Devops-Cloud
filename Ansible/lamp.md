## install LAMP in ubuntu (manually):
  reference link:  https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04


  L - linux
  A - apache2
  M - mysql
  P - php
 ---
 sudo apt-get update
 sudo apt-get install apache2 -y
 sudo systemctl restart apache2
 sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
 sudo systemctl restart apache2
 sudo nano /var/www/html/info.php
  -----
  <?php
    phpinfo();
  ?>
 ----
------


Playbook 
   collection of tasks
        modules : smallest automic unit ansible
                  module is actual woker

  ubunut:     apt-get install nginx
                apt:
                  name: nginx
                  state: present

 centos:    yum intall nginx
              yum:
                name: nginx
                state: presnet


       package:
         name: nginx
         state: present

apt-get install nginx
yum install nginx
  package

i want install apachae2 on centos and ubuntu  
  sudo apt install apache2
  apt:
   name: apache2
   state: present
  sudo yum install httpd
   yum:
     name: httpd
     state: presnet 

user
file
copy
apt
yum 


         
            
              