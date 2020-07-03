 sudo apt-get update
 sudo apt-get install apache2 -y
 sudo systemctl restart apache2
 sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
 sudo systemctl restart apache2
 sudo nano /var/www/html/info.php
   ---
   <?php
phpinfo();
?>
---

 sudo apt-get update
 sudo apt-get install apache2 -y
 ----------------------------------
 - hosts: all
   become: yes
   tasks:
   - name: install apache2 on ubuntu
     apt:
      name: apache2
      state: present
      update_cache: yes
-----
sudo systemctl restart apache2
----
- name: restart apache2 on ubuntu
  service:
    name: apache2
    state: restarted
-----

sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql:
----
- name: install php packages
  apt:
   name: ["php","libapache2-mod-php","php-mcrypt","php-mysql"]
   state: present 
 
 OR

- name: install php package
  apt: 
    name: "{{ item }}"
    state: present
  loop:
   - php
   - libapache2-mod-php
   - php-mcrypt
   - php-mysql


OR

- name: install php package
  apt: 
    name: "{{ item }}"
    state: present
  with_items:
   - php
   - libapache2-mod-php
   - php-mcrypt
   - php-mysql 

   ---------------

sudo systemctl restart apache2
----
- name: restart apache2 on ubuntu
  service:
    name: apache2
    state: restarted
----- 


sudo nano /var/www/html/info.php
   ---
   <?php phpinfo(); ?>
---

copy:
    src: /srv/myfiles/foo.conf
    dest: /etc/foo.conf

    Create a file
      vi info.php
      -----
      <?php
        phpinfo();
      ?>
     ---
- name: copy file from master to remote nodes
  copy:
     src: /home/ansible/info.php
     dest: /var/www/html/info.php

--------
- name:  copy content into nodes
  copy:
    content: '<?php phpinfo(); ?>'
    dest: /var/www/html/info.php
----




