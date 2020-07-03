Ansible-Roles: 
* how to use someone else playbook:
   ansible-galaxy

 if you want to use galaxy roles
   * install role
      ansible-galaxy install geerlingguy.java
   * write a playbook:
   - hosts: servers
      become: yes
     roles:
      - role: 
        - geerlingguy.java
        - zaxos.tomcat-ansible-role
      

* how to write resuable playbook