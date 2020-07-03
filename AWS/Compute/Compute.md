## Agenda:
    * EC2 (Elastic Compute Cloud)
      * virtual machine as a service in AWS 
      * how to create EC2 machines and ways to create (console , awscli , cloudformation , powershell(aws posershell modules)) 
         * linux
            ssh 22 (if you want to access linux machines enable 22 port)
            * ubuntu:
              by deafult aws provide ssh based login
              # linux machine
              Note: if you want to user based login you can
              we need to do something
                steps:
                  1 enable password based authentication (mandatory)
                   ---
                    vi /etc/ssh/sshd_config
                  ---
                  2 assign sudo previlage (optinal)
                   ---
                    visudo 
                    or 
                    vi /etc/sudoers
                   ---
                  3 restart sshd
                   ---
                    systemctl restart sshd 
                   ---
                 * create user
                  --- 
                   adduser ec2
                  ---

                   
            * centos:
              
         * windows
         RDP (Remote Desktop Protocal) port 3389 
            * desktop version
            * server version (No UI) only Powershell and Cmd Prompt
        * login into Windows   
            * download RDP
            * run connad ==> mstsc -v publicipmachine

  ## install webserver
       * linux:
           ubuntu 16.04:
             sudo apt-get update
             sudo apt-get install apache2 -y
           centos:
            sudo yum install httpd -y
        * windows:
           webserver(IIS) already available in windows
           * Enable IIS
           ---
           powershell
            ---
            Install-WindowsFeature -name Web-Server
            ---

            
 



    * Image
    * Autosclaing
    * Loadbalancer
    * Elastic Bean stack
    * Container services in AWS
         * ECS 
         * ECR
         * EKS
        
           