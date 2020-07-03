backend:
  * local:
      default backed
       store terraform state file in current directory
  * remote:
      store terraform state file in remote location

locking:
  user A trying execute terraform apply
  user B trying to execute terraform cli comands , it lead to create lock
Locking:

* terraform lock:
   when ever A user trying execute terraform cli commands should not allow other person 
   * until unless releas A person


S3 backend for terraform statefile
dynamo db for loacking



Azurerm: its support storing state file and loacking 


S3 backend:
  * create S3 bucket with Versioning
  * create Dynamo DB table


