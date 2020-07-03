vpc: virtual private cloud
  network as a service in aws 
  * what to define size of network:
    By using below types
      * class full range
          class A
          class B
          class C
        * old 
        * it have some drabacks
      * Class less inter domain range (CIRD)
        cloud supports only CIRD
* VPC -- network
* in free tier we cant create more than 5 vpc's 
* Free service in Netwrok:
   * Vpc
   * subnet
   * sg
   * Nacl
   * IGW
   * Route Tables
* paid service in Network:
   * NAT gateway
   * vpc peering
   * transit gateway 
   * Elastic Ip:
      billing is enable when you not use
      billing is disable: when you use 
   * Route 53 
   * Lb
   * Cloud Front 
* vpc is region specific
   oregon 
   us-west-2   --region code
  * create vpc in aws we need to things
      * CIDR:  it defines your network size
      * region: 
* subnet is avalibility zone specific
   us-west-2a
   us-west-2b
   
  vpc network size  >= (subnets size) 
* subnet -- network we can break it down in to pices each peice called as Subnet



54.200.144.164 
after stop and start
52.88.112.92

* i dont want to change my Public Ip address
  solution : static Ip address
    Elsatic Ip:
      * allocate Ip
      * associate elastic Ip



* create infra in 6 ways:
   * console
   * aws cli
   * Powershell -- we need to install aws powershell module 
   * cloudforamtion
   * Terraform
   * Ansible -- ansible vpc module



* VPC
  what vpc
  how to create vpc using console
 * Subnet:
   what is subnet
   how to create subnet
 * Internet Gateway (IGW):
   * what is IGW
   * How to create and Attch to Vpc
   * why we need
 * how to create EC2 machine in your network
 * Elastic Ip:
   what is elastic Ip
   use case




   ## CIRD
   ## what is Ip
   ## diff IpV4 and IpV6
   ## 7 layers 




 