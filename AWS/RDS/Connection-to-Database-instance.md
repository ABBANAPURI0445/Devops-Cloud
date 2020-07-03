## create a mysql database with "Public accessibility yes"
   * connecting to database instance from mysql workbench


##  create a mysql database with "Public accessibility NO"
   * connecting to database instance from mysql workbench
   * using database ssh tunneling concept 
   * connection method is standard tcp/ip over ssh
   * its like Bastian Host
      first connect EC2 machine from there we can connect Database



## How to make high availabilty Database
   * Multi AG deployment: 
      when you select multi AG deployment database will create multiple AZ 
      * Automatic Failover
      * No downtime Require
      * cost 
      
   * Read replica:
       * after creation of your database create one read replica 
       * Manual failover (click on action and click on promote) 
       * Downtime require
       * cheaper than Multi AG deployment (its only charge for your Hardware)

   * CRR (Cross region replication):
     
      