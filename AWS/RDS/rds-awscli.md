google query: aws rds cli reference
   https://docs.aws.amazon.com/cli/latest/reference/rds/
## create database instance:
----------------------------
  aws rds create-db-instance --db-name test-db --db-instance-identifier mysq-test --allocated-storage 20 --db-instance-class db.t2.micro --engine mysql --master-username admin --master-user-password admin1234 --vpc-security-group-ids sg-005bbf08c8b5baa6c --availability-zone us-west-2a --port 3306 --engine-version  5.7.22 --publicly-accessible 

## create db-snapshot:
----------------------
  create db snapshot using database instance identifier  (--db-instance-identifier)

  aws rds create-db-snapshot --db-snapshot-identifier snapshot-test --db-instance-identifier mysq-test --tags Key=Name,Value=snapshot-test



## delete snapshot:
-------------------
 aws rds delete-db-snapshot --db-snapshot-identifier snapshot-test


## stop db instance:
--------------------
## how to find db instance identifier:
   aws rds describe-db-instances
 aws rds stop-db-instance --db-instance-identifier mysq-test


## start db instance:
----------------------

aws rds start-db-instance --db-instance-identifier mysq-test


## how to db instance from the snapshot:
  
  * restore snapshot:
      https://docs.aws.amazon.com/cli/latest/reference/rds/restore-db-instance-from-db-snapshot.html
## Copy snapshot:
    https://docs.aws.amazon.com/cli/latest/reference/rds/copy-db-snapshot.html



## Modify database using aws cli:
----------------------------------

aws rds  modify-db-instance --db-instance-identifier mysq-test --deletion-protection --multi-az

