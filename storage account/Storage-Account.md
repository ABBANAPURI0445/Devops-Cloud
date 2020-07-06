# Azure Storage Account:
 storage account is one common place to store anything

## aws storage Service: 
  1. Block level storage: 
    1. nothing but extrenal hard disk __EBS Volumes__ 
    2. EBS volumes attach to VM
    3. EBS volumes we cant attach to Multiple VM's at a time
    4. if you want to attach to another machine same EBS volumes
    5.  first deatch exixiting machine and attach to new machine
  2. File level storage: \
    * nothing network storage __EFS__
  3. blob (binary large object) s3 __Simple Storage Service__ 
     1. in this s3 we can store mp4,mp3,documents,images  
     2. you can put restrictions on access
        1. public 
        2. private(its only for IAM user)
  4. Message Queue 
 ## Azure storage:
   * everything under part of storage account  
     ### storages:
       1. block: 
            page block(EBS) and file block(EFS)
       2. blob:
        we can store mp4,mp3,documents,images,logs, metrics data, backup
        you can put restrictions on access
            * __Public__
            * __Private__ (if you want to grant access for perticlur users by using __Azure Active Directory__) 
                
       3. Queue storage: 
            other Queue service: \
                __Rabit MQ__ \
                __Message Queue__
       4. tables: 
            * table staorage all about store Key value Pairs \
            * in these days using __Cosmos DB__ 

 ## Activity:
   * create storage account with public access
   * goto Storage account and create one conatiner (Page blob)like  __s3__
   * upload simple text file
   * access content over internet