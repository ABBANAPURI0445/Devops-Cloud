## commandline interface:
  
  * comminicate linux terminal or windows powershell to AWS APL server 
     
    1 * Install awscli tool:
        Windows machine: port 3389 RDP (remote desktop protocal)
           Choco install awscli 
        ubuntu:  port 22 (ssh)
           apt-get install awscli -y
        centos/RHEL:  port 22 (ssh)
            yum install awscli -y
        Mac:   port 22 (ssh)
          homebrew install awscli -y

   2 * Create user in aws (IAM): 
        IAM ==> create user  ==> attach existing Policies ==> Adminstrator access
           ==> download CSV file 
            csv file contains
              * Access key
              * Secrete Key 
        * with help of access key and secrete key we can communicate to AWS API service from commandline (linux terminal/powershell/commnadpromt)
   3 * establish connection between commandline and API service:
        ---
        aws configure
        ---
         AWS Access Key ID [None]:  xxxxxxxxxxxxxxxxxxxxxxxx
         AWS Secret Access Key [None]: xxxxxxxxxxxxxxxxxxxxxxx
         Default region name [None]: us-west-2
         Default output format [None]: json

    
    ## list of EC2 machine present in oregon region:
    aws ec2 describe-instances

    ##  list of EC2 machine present in Ohai region:
      * first change your region code from oregon to Ohai
      * aws configure
      ----
         AWS Access Key ID [None]:  xxxxxxxxxxxxxxxxxxxxxxxx
         AWS Secret Access Key [None]: xxxxxxxxxxxxxxxxxxxxxxx
         Default region name [None]: us-east-2
         Default output format [None]: json
     ---
Topics:
   * aws cli filters
   * JMes Path


## create mysql database using AWS cli:
---------------------------------------
   steps:
    1  google query:
         * aws rds cli reference
    2 serach for create database instance
      


        
    