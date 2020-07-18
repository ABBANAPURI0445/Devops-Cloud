## Agenda:
 1. create VPC
 2. Create IGW and attach to vpc
 3. Route tables
     1. Public RT
     2. Private RT 
 4. Subntes: create 3 subnets
     1.  One public subnet
     2.  Two Private Subnets
 5. create Two sg 
     1. enable 22 ssh port
     2. enable 3306 mysql port 
 6. Launch EC2 machine in Public Subnet
 7. create subnet group (private subnet 1 and private subnet 2)
 8. Launch RDS mysql in Private subnetgroup