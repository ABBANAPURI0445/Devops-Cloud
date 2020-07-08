# Storage Account: 
  ## Storage Services:
   1. Blob:
     * 3 types of blob storage
      1. block blob: document , media files , images \
         * you can upload , replace, delete
      2. append blob: use case is store logs and audit information
      3. page blob: VHD and database 
   2. file: 
       nothing But NFS 
   3. table: store key values pair data 
   4. queue:   mesage queue
   5. data lake:  use case: machine learning , data analytics 
# Azure storage account types: 
 Refer Here:
[Storage Account](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview) \
  1. General-purpose V2:    
  2. General-purpose V1
  3. BlockBlobStorage	
  4. FileStorage
  5. BlobStorage

performance tiers:
    standard --> HDD
    Premium  --> SSD  

access tiers: 
    Hot: frequent access  "high cost on storage less cost on access"
    cool: in frequent access "high cost on access and low cost on storage"
    Archive: data offline "download and uploads"
## Storage account Limit:
[click Here](https://docs.microsoft.com/en-us/azure/storage/common/scalability-targets-standard-account)



## create Block Blob storage service and upload files and image:
 1. goto storage account
 2. create container 
     * you can create number of Container , No Limit