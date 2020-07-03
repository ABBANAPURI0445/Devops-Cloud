## Azure DevOps:
   # Deploy java webapplcation using Azure DevOps:
     Q) how to deploy java application by using Azure DevOps:
         1 Git Repos
         2 Build -- build Pipeline
         3 Artifact 
         4 Release
          many ways to deploy:
             * deploy into tomca8  by using ansible (CM Tools) , Terraform 
                ansible controll server we need to add in deployment group 
                  * playbook   tomcat8.yaml
                  * inventory file  -- myinventoryfile
                  ansible-playbook -i myinventoryfile tomcat8.yaml
             * Azure App service: 
                 its like "elastic bean stack" in aws
                   * select env:
                   * its PAAS
                   * it support many languages 
                   * everything managed by Azure 
                      tomcat8
                      * VM scaling (Horizantal scaling)
                      * Loadbalancer
                      * monitoring
                      * storage
    # Deploy java web application using Azure App service
     
      az group create --location westus --name java-webapps
      az appservice plan create -g java-webapps -n gol-java-app --is-linux
      az webapp create -g java-webapps -p gol-java-app -n gameoflife-testing --runtime "TOMCAT|8.5-jre8"





   # Deploy .Net application Using Azure DevOps:
         stage:
           * SCM
           * Build
           * Artifact
           * Release 
              * Deployment group:
                  * launch windows vm  (webserver)
                  * add deployment group
                      create deployment group 
                         powershell scriipt (install agent)
                        This powershell script run on window vm (webserevr) 


   # Pull Request:
      * merge:
         * it additional feature code review
