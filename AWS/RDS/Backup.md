## how to backup data:
  * automated Backup:
       * full backup
       * partial backup/sequential backup (Daily once)
       * Transanctinal log backup (hourly once)
     * it support Point-in-time Restore
  * Snapshot:
      * it creates full backup 
      * from the sanpshot we can create database in same region (restore snapshot)
      *  from the sanpshot we can create database in different  region (copy snapshot) (CRR)
      *  from the sanpshot we can create database in  different aws Account (share snapshot)
  * Export to S3 bucket:
      * Exporting Snapshot Data to Amazon S3:
             https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html