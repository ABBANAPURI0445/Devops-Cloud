## how to make idempotent (raw , shell , commands)
  1 handlers
   - name: create file
     file:
      path: /home/ansible/dummy.txt
      state: touch
   - name: install tomcat
     shell:
       apt-get update
       apt-get install tomcat8 -y

* create file task is execute only one time because file module is idempotent
* install tomcat task it will execute every time (ansible-playbook -i inev playbook.yaml) because shell is not idempotent 
* make idempotent
----
   - name: create file
     file:
      path: /home/ansible/dummy.txt
      state: touch
     notify:
      - install tomcat
   handlers:
   - name: install tomcat
     shell:
       apt-get update
       apt-get install tomcat8 -y
    
  2 stats