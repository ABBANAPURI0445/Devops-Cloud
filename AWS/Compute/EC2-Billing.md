## EC2 Billing:
   * AWS free tier
      * How much free
         Refrence: https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc
      * 750 hours free on EC2 machine per month
      * t2.micro 1 BG RAM 1 vCPU (Free)
      * 10 (t2.micro) machine * 75 Hours = 750 Hours
    ## Pricing Models:
        * aws ec2 pricing model
           * On-Demand:
               instance type   monthly cost
                 t3.2xlarge     $ 243.61 
                In on-demand billing is enable only instance state is "running"
                when instance state is stopped 
                     compute billig is OFF
                     storage (harddisk) is ON
                when terminate state
                      compute billig is OFF
                       storage (harddisk) is OFF
           * Resrved model:
              in reserve model alway billing is enable
              whether you use it or not
               terms
                1 year
                   1 year No upfront resrved $152.28
                   1 year partial upfront resrved $144
                   1 year all upfront resrved $142
                3 years 
                   3 year No upfront resrved $104
                    3 year Partial upfront resrved $97
                     3 year all upfront resrved $91 

## Image:
   * i want create custom image (with tomcat8 server)
     steps:
        * create Ec2 machine (ubuntu)
        * login into machine
        * install tomcat:
           ---
           sudo apt-get update
           sudo apt-get install tomcat8 -y
           ---
        * i want above appserver in 1000 machine
        * create machine and login and install tomcat 
        * create image
        * create multiple machines using image

# AWS CLI:
   * install awscli
       windows:
         choco install awscli
       linux 
         ubuntu
          apt-get update
          apt-get install awscli -y

         centos
            yum install awscli -y

        Mac:
          brew install awscli
   * create user in IAM 
       download CSV file
          access key 
          secrete key
   * configure aws cli
      ---
      aws configure
      ---

 * create EC2 machine using AWS CLI:
      * run-instance:
        Reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/run-instances.html

     ----
     aws ec2 run-instances --image-id ami-003634241a8fcdec0 --instance-type t2.micro --key-name EC2 --count 1  --associate-public-ip-address  
     ---  
     * terminate ec2 machine:
      Reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/terminate-instances.html#examples

      ---
      aws ec2 terminate-instances --instance-ids i-0680107b71a970798
      ---
        

             
              

          