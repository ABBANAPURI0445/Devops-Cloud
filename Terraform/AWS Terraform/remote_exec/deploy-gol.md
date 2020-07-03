## manually
   * create vpc
   * create ec2 machine 
   * login into EC2 machine
   * install tomcat8 deploy java application


## from terraform:
   * Provider
       accesss
       secret
       region
   * Resources
      * create vpc
      * create IGW
      * RT
      * Subnets
      * Sg
      * EC2
   * provisioner:
       connect machine
         connection: (ssh -i ec2.pem username@publicip)
           pem file
           public ip
           user name
           shell
        Provision
           install tomcat
             sudo apt-get update
             sudo apt-get install tomcat8 -y
           deploy application
              download war file
              wget url
              deploy into webapps
              cp gameoflife.war /var/lib/tomcat8/webapps
         
