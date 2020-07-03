## Crete VPC:
   * create vpc
   * create internet gateway and atatch vpc
   * create route table
       * Public Route table
       * Private Route Table
   * create subnets
        * public subnet
        * Private subnet
   * subnets associate to route tables
   * create Security group for ec2 22 (ssh)
   * create security group for RDS(Mysql) Port 3306
   * create EC2 machine in Public Subnet
   * create RDS instance in Private Subnet



   * Provider   Reference: https://www.terraform.io/docs/providers/aws/index.html
        region
        access key
        secrete key
   * Resource
        vpc
        igw
        rt
   * output
       vpcid
       ec2 public ip
       rds endpoint


* create IAM user in aws
     download CSV file
         access key
         secret key