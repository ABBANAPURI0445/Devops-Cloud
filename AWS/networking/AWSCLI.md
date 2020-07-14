# AWS CLI:
 1. install awscli  
    ```
    * windows
     choco install awscli -y
    * linux machine
     sudo apt-get install awscli -y
    * Mac 
      brew install awscli -y
    ``` 
  2. create user in IAM (AWS)
  3. configure aws cli 
     ```
     aws configure
     ```
## create VPC using AWS CLI 
 * find documentaion
[aws cli](https://docs.aws.amazon.com/cli/latest/reference/)
OR
* aws vpc cli reference
```
create network
1. create vpc 
aws ec2 create-vpc --cidr-block 192.168.0.0/16    # vpc-0061dafd5db485d08
2. create internet and attach to vpc 
aws ec2 create-internet-gateway # igw-0628f59af12421bd6
aws ec2 attach-internet-gateway --internet-gateway-id igw-0628f59af12421bd6 --vpc-id vpc-0061dafd5db485d08

3. create Route tables:
    * Public RT:
      * create RT
      aws ec2  create-route-table --vpc-id vpc-0061dafd5db485d08   # rtb-08602648321ed2961
      * route to IGW
      aws ec2 create-route --route-table-id rtb-08602648321ed2961 --destination-cidr-block 0.0.0.0/0 --gateway-id igw-0628f59af12421bd6
    * Private RT:
     * create RT:
      aws ec2  create-route-table --vpc-id vpc-0061dafd5db485d08 
      # rtb-0e93f5ea2bb3fea93
4. create subntes
     * Public Subnet:
       * create subnet
       aws ec2 create-subnet --availability-zone us-east-1a --cidr-block 192.168.0.0/24 --vpc-id vpc-0061dafd5db485d08   # subnet-00921e3c56de905c7
       * associate to Public RT
       aws ec2  associate-route-table --route-table-id rtb-08602648321ed2961 --subnet-id subnet-00921e3c56de905c7 
     * Private Subnets:
       * create subnet
        aws ec2 create-subnet --availability-zone us-east-1b --cidr-block 192.168.1.0/24 --vpc-id vpc-0061dafd5db485d08  # subnet-058d5a76f97b57eb9
       * associate to Private Route Table
        aws ec2  associate-route-table --route-table-id rtb-0e93f5ea2bb3fea93 --subnet-id subnet-058d5a76f97b57eb9 
5. create security group 
  aws ec2 create-security-group --description "for enable 22 port" --group-name ssh --vpc-id vpc-0061dafd5db485d08  # sg-0dea5abd86a857f1e 

  aws ec2 authorize-security-group-ingress --group-id sg-0dea5abd86a857f1e --protocol tcp --port 22 --cidr 0.0.0.0/0 

  aws ec2 authorize-security-group-ingress --group-id sg-0dea5abd86a857f1e --protocol tcp --port 80 --cidr 0.0.0.0/0

6. create vm in public subnet:
  aws ec2 run-instances --image-id ami-08f3d892de259504d --instance-type t2.micro --key-name network --security-group-ids ["sg-0dea5abd86a857f1e"] --subnet-id subnet-00921e3c56de905c7 --count 2 --associate-public-ip-address



