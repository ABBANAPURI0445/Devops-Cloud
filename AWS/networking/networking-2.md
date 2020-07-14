## Network: 
1. create vpc and internet gateway , attach to vpc
2. create 2 subntes 
   1. Public subnte
   2. Private subnte
3. create Route tables
    1. Public Route Table
    2. Private Route Table
4. Associate Subntes to Route tables 
5. create EC2 machine on each subnet

## activity:
 1. login into Public ec2 machine
 2. login into private ec2 machine --> you cant connect to this machine \
 Q) how to connect private ec2 machine \
   A) you can connect private ec2 machine from the public ec2 machine  \
    Note: if both should present in same vpc otherwise we need to do vpc  peering \
 3. after login into private ec2 machine
    ```
    sudo apt-get update
    sudo apt-get install apache2 -y
    ```
    Note: there is no internet connection to private ec2 machine \
    * by using NAT Gateway you can provide internet to private ec2 machine \
  