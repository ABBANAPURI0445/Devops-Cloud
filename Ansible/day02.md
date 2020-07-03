## create folder in linux (manually) 
 mkdir manaull
 touch manuall
## how to create directory and file using ansible:
----
- hosts: all
  tasks:
  - name: create directory
    file:
      path: /home/ansible/playbook
      state: directory

## how to create user in linux manually
  adduser ansible
---
- hosts: all
  become: yes
  tasks:
  - name: create user
    user:
      name: ansible
---

## install apache2 in linux
----
apt-get update
apt-get install apache2 -y
---

## install apache2 in linux  using ansible 

apt-get update   ==> update_cache: yes

- hosts: all
  become: yes
  tasks: 
  - name: install apache2
    apt:
      name: apache2
      update_cache: yes


## install tomcat8 in linux  using ansible:

- hosts: all
  become: yes
  tasks: 
  - name: install apache2
    apt:
      name: tomcat8
      state: present

## uninstall apache2

- hosts: all
  become: yes
  tasks: 
  - name: install apache2
    apt:
      name: tomcat8
      state: absent
