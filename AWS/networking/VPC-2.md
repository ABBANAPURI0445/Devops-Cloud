## Route Table:
    * types of RT:
       Public Route Table:
          Route table which route to Internet gateway == 
       Private Route Table
           Route table which not  route to Internet gateway
    

## Steps:
```
   1 Create vpc
     * CIDR
   2 create IGW and attach to vpc
   3 create Two Route Tables
        1 public RT:
           * create Route table
              required -- VpcId
           * route to internet gateway
             click on RT
               * click on Routes
                  * edit Routes
                    * 0.0.0.0/0 cidr
                    * target -- IGW id
        2 private RT:
          * create Route table
    4 create 4 subntes in different az
       * VPC ID
       * CIDR
      subnetA:
        192.168.0.0/24
      subnetB:
        192.168.1.0/24
      subnetC:
        192.168.2.0/24
      subnetD:
        192.168.3.0/24
     Note:
      * above 4 subnets
        make two subnet (subnetA and subnet B) as Public subnet
          * subnetA and subentB associate to Public Route table
        make two subnets (subnetC and subnet D) as Private subnet
          * subnetC and subentD associate to Private Route table
```

## create two EC2 machine
 ##  one in public subnet
  * Launch EC2
  * login into ec2 machine 
    * run below command
       sudo apt-get update
       sudo apt-get install apache2
 ## one in private subnet:
  * Launch EC2 machine
  * login into ec2 machine 
    * run below command
       sudo apt-get update
       sudo apt-get install apache2


Q) how can i connect to app ec2 machine
     Steps:
       * login into web server (Jump server)
       * from the webserver you can connect app server
      this process called as bastian Host or Jump Box
     
  