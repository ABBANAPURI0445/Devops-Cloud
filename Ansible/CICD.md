Continueos integration:
   stages:
     1 SCM
     2 BUILD
     3 UNIT TEST
     4 CODE QUALITY ANALYSIS
     5 ARTIFACTORY 
Continueos Delivery: 
   Playbook(lamp) and inventories(myinven) files push to GitHub
    stages:
     6 SCM-Ansible
     7 deployment 
        sh 'ansible-playbook -i myinve lamp.yaml'


