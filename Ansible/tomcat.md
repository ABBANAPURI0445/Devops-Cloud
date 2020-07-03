## manaull:
 * step 1: install java
  sudo apt-get update
  apt-get install default-jdk  -- ubuntu 16.04 jdk8
                               -- ubuntu 18.04  jdk11 
   OR
   apt-get install openjdk-8-jdk -y

------  
- hosts: all
  become: yes
  tasks:
  - name: install java8 on ubuntu
    apt:
     name: openjdk-8-jdk
     state: pressent
     update_cache: yes
------
     Reference: https://docs.ansible.com/ansible/latest/modules/apt_module.html

* step 2: create user 
    
            

    * create group 
       * sudo groupadd tomcat
    - name: create tomcat group
      group:
       name: tomcat
       state: present

     * create directory /opt/tomcat 
      - name: create diectory
        file:
          path: /opt/tomcat
          state: directory

     * create user:
      sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

       - name: create user using raw way
         shell: sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
           shell raw command -- executing linux commands 
             * not ideompentent
             * some times we cant find modules for some linux commands
        
         or
        
        - name: crete user 
          user:
            name: tomcat
            shell: /bin/false
            group: tomcat
            home: /opt/tomcat

step: 3
   cd /tmp
   download tomcat.tar.gz file
   untar

   --
 - name: download tamcat tar file
   get_url:
      url: https://downloads.apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
      dest: /tmp
    
 - name: untar file
   shell: sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1

OR

- name: install tomcat (unarchive module)
  unarchive:
    src: https://downloads.apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
    dest: /opt/tomcat
    remote_src: yes
    extra_opts:
    - --strip-components=1



step: 4  update permissions

** if you want to change permmisons of your file or directory
   https://docs.ansible.com/ansible/latest/modules/file_module.html#examples



** manual commands
  -----
   cd /opt/tomcat
   sudo chgrp -R tomcat /opt/tomcat
   sudo chmod -R g+r conf
   sudo chmod g+x conf
   sudo chown -R tomcat webapps/ work/ temp/ logs/
  ----
task:  (use file module)
 - name: update pemissions
   shell: |
   sudo chgrp -R tomcat /opt/tomcat
   sudo chmod -R g+r /opt/tomcat/conf
   sudo chmod g+x /opt/tomcat/conf
   sudo chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/
    

step: 5 service
----------

* manual 

sudo nano /etc/systemd/system/tomcat.service
  ----
  [Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target

----
- name: copy service file
  copy:
   src: /home/ansible/service
   dest: /etc/systemd/system/tomcat.service

-------
manual:
  sudo systemctl daemon-reload
 
  - name: deamon reload
    systemd:
     daemon_reload: yes

  
  sudo systemctl start tomcat

  - name: start tomcat
    systemd:
     state: started
     name: tomcat



    sudo systemctl enable tomcat
  
  - name: systemctl enable tomcat
    systemd:
      name: tomcat
      enabled: yes

  









    
            


