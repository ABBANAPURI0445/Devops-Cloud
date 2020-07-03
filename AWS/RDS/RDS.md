## what are the supported database engines aws   (PAAS)
     1 mysql
     2 MS sql
     3 postgress
     4 maria
     5 Oracle        its not under free tier 
     6 Aurora        its not under free tier
       * aurora with mysql
       * aurora with postgress sql 
##PAAS 
  ## AWS Manage:
    * hardware (cpu & RAM)
    * storage
    * virtualization (create multiple machine on single hardware)
        eg: 
          vm ware
          hyper-v (aws internally use)
          Hyper-v is the software which is helps to create multiple machines in single hardware 
    * networking:  VPC
    * operating system: upgrade version and apply patches 
    * database engine: apply patches and security upgrades
    * aws simplyfy admin activities:
         * backup
         * replication
         * HA 
    ## manage by user:
       * data
       * application
##IAAS:    cheaper option but admin needs to do lot os things(activity)     
  ## database manage by user in aws: IAAS 
      * create EC2 machines --> aws apart from OS  ubuntu
      * install database engine
      * create database and manage database 
    ## AWS manage:
        1 hardware
        2 networking
        3 storage
        4 virtulization
    ## manage user (user responsibilties)
       1 operaing system upgrades and security patches
       2 database engines upgrades security patches
       3 create database
       4 maintain database 




## pricing models for RDS:
    * pricing varie with region to region
    * pricing depends on database engine 
      aws pricing calculator: 
          https://calculator.s3.amazonaws.com/index.html

        * calculte price oregon region and mysql database
   on-demand                      db.r3.2xlarge mysql  20gb   $691   best for test and dev
       * billing is enable when start the RDS instance
       * billing is disable when stop and terminate state 
       * pay as you go like electricity bill
  3 years & all upfront           db.r3.2xlarge mysql  20gb   $100    best for productiom
     * whether you use it or not you need pay bill 
  3 years & all partialfront      db.r3.2xlarge mysql  20gb   $246   
     * whether you use it or not you need pay bill     



## how much free :
    https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc

    * 750 hours free for month 
    * free tier configuration 
          1GB RAM
          1 core CPU
          20GB HDD 
          20BG backup
    * charge per hour (unit is 1hour)
     
## how to create a database in AWS 
     two ways
       1 PAAS   --> costlier 
          use RDS service
          create Mysql database
       2 IAAS   --> cheaper
          steps:
           1 ec2 with ubuntu
           2 install mysql database engine on ubuntu
               https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-16-04
           3 create database
            ---
            mysql -p     
            create DATABASE test;
            ---

## assignments:
    * calculate RDS pricess for different regions and diff database engines 
      on-demand
      1 year with all up-front
      1 year with partial up-front
      3 years with all up-front
      3 year with all partial up-front
  PAAS
    * easy-create RDS 
       mysql
       maria DB 
    * delete Database 
  IAAS:
     * install mysql engine
     * create a database and delete database
     * delete ec2 machine
    


