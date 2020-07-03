## install tomcat8 on ubuntu
   * deploy gameoflife application


   manuall command convert into ansible task(module)

   apt-get install nginx

   - name: install package
     apt:
       name: 
       state:




       - name: execute commands
         shell: |
            sudo groupadd tomcat
            sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat


      - name: commands
        shell: |
            chgrp -R tomcat /opt/tomcat
            chmod -R g+r conf
             chmod g+x conf
             chown -R tomcat webapps/ work/ temp/ logs/

             
