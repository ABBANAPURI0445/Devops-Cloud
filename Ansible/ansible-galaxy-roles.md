## ansible galaxy roles:
   * how to write ansible galaxy roles:
       create role:
         ansible-galaxy --help
         ansible-galaxy role init <role-name>
         eg:
           ansible-galaxy role init lamp
     lampstack role:
        tasks:
          - name: install apache2 
            apt:
              name: "{{ lamp_web_package}}"
              update_cache: yes
              state: present
            notify: 
            - restart web service
          - name: install php packages
            apt:
              name: "{{ php_package }}"
              state: present 
            notify: 
            - restart web service
          - name: copy file
            copy:
              src: info.php
              dest: /var/www/html/info.php
           



        

        handlers:
        ---------
        - name: restart web service
          service:
            name: "{{ lamp_web_package}}"
            state: restarted


        


        vars:
        -----
           lamp_web_package: apache2
           php_package:
            - php 
            - libapache2-mod-php 
            - php-mcrypt 
            - php-mysql


       files:
       -----
       vi info.php
         ---------
           <?php
           phpinfo();
            ?>



    * role name is lamp
    * playbook  lamp-role.yaml
      -------
      - hosts: app
        become: yes
        roles:
        - lamp


    * ansible-playbook -i inventories lamp-role.yaml


    * ansible-vault:
      storing sensitive information 
       eg: username and password
           key-pairs
    reference: https://docs.ansible.com/ansible/latest/user_guide/vault.html

  * ansible-tower:
     * how to execute playbook:
      commandline:
        ansible-playbook -i inv playbook
      tower:
        choose(upload) play book
        choose(upload) inventory file
    run playbook:
      
     