1 write playbook (lamp) for multiple platforms
   ubuntu
   centos
2 Handlers
3 variables:
  multiple places to define variables
    * playbook:
       * how to define
       * how to call(use) in task
    * inventory file
4 Block in ansible



---------
* how to collect node information from master
  ansible all -m setup -a 'filter=*os*'

* write a playbook for apache2 on centos and ubuntu

  - hosts: all
    become: yes
    - name: install apache2 on ubuntu
      apt: 
        name: apache2
        state: present
      when:  "ansible_os_family" == "Debian"
    - name: install httpd on centos
      yum: 
        name: httpd
        state: present 
      when: "ansible_os_family" == "RedHat"

      OR
    - name: install httpd on centos
      yum: 
        name: httpd
        state: present 
      when: "ansible_os_family" =! "Debian"


