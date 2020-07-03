## tags:  Reference: https://docs.ansible.com/ansible/latest/user_guide/playbooks_tags.html
   tags.yaml
   --- 
   - hosts: all
     become: yes
     tasks:
     - name: install apache2 
       package:
        name: "{{ web_package }}"
        state: present
       tags:
         - webserver
     - name: install multiple packges
       apt:
        name: 
          - git
          - tree
          - wget
          - htop
        state: presnet
       tags:
        - packages  
     - name: create file
       file:
         path: /home/ansible/new.txt
         state: touch
       tags:
        - file


* out of above 3 tasks i want to instal only tasks 
   by using tags

* ansible-playbook -i inve tags.yaml --tags "webserver,file"

* ansible-playbook -i inve tags.yaml --skip-tags "packages"


group_vars/app:
-------------
web_package: nginx
path: info.php
username: admin
password: password



ansible-playbook --help

ansible-playbook -i inve tags.yaml -e web_package=apache2