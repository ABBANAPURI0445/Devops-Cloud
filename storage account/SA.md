## Azure storage explorer:
  * you can manage entire storage account from your machine
  * install azure storage explorer
  access key: full access
  SAS: limited access 


## page blob: 
   * VHD --> upload in page blob for import image --> VM  
# managed disk and unmanaged disk: 
  managed disk: its not part of the storage account
               managed disk managed by azure
            * IOPS -- 2000 
            *   all IOPS used by single dask disk
            * Throuthput
 unmanaged disk: its part of the storage account
                here IOPS for entire storage 
                shared IOPS in multiple storage service(blob,file,table,queue) in storage account 

# how to create managed disk and attach to vm linux:
 * create VM
 * create disk and attach to vm
 * create Mount 
 * storage disk you can attach to multiple VM's but at a time not possible
 * if you want to attach to new vm first detach existing VM
 * /dev/sdc1: UUID="4d5a0eb2-8a71-4621-94ee-65f338cbe640" TYPE="ext4" PARTUUID="833f343a-01"
[windows VM attach disk](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-managed-disk-portal)
[linux VM attach disk](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal)

OS Disk : disk with OS
temporary Dask:  ephemeral data
Data Disk: persistand data (data never remove until unless you delete)


   
blob:
  * three types:
  *  1 Block blob: re write 
  *  2 append blob: 
  *  3 page blob: VHD --> ISO image 
DISK:
 managed and un managed disk: 
Authentication:
* Azure azure Ad
* Access key: full right 
* SAS: limited access , expiry 
manage storage account 
 * azure storage explorer
 * azcopy  - 
 * azcli
 * azure portal
 * azure portal 

* Tables: use cosmos Db
* queue:
* azure File: 
  network storage as a service
  * we can attach file to multiple VM's at time 

* diff betwen Azure data disk and azure file share: 


## Replication: 
   LRS -- >
   ZRS
   GRS

vi afs.sh
---------
sudo mkdir /mnt/openmrs
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/openmrs.cred" ]; then
    sudo bash -c 'echo "username=openmrs" >> /etc/smbcredentials/openmrs.cred'
    sudo bash -c 'echo "password=ZK1DIq4x9yJtySsM381Sk5cmRSl1rJB27Cw1Tktg4HwGbP7GfWUSa9RnrRkSMRm58ORqNGCDtAW7mfHyxE6LAw==" >> /etc/smbcredentials/openmrs.cred'
fi
sudo chmod 600 /etc/smbcredentials/openmrs.cred

sudo bash -c 'echo "//openmrs.file.core.windows.net/openmrs /mnt/openmrs cifs nofail,vers=3.0,credentials=/etc/smbcredentials/openmrs.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'
sudo mount -t cifs //openmrs.file.core.windows.net/openmrs /mnt/openmrs -o vers=3.0,credentials=/etc/smbcredentials/openmrs.cred,dir_mode=0777,file_mode=0777,serverino
----


encryption 
database 
SMB 2.1 -- 

ARM --> Cloudformation  --> terraform 
Migration -->
ASR --> 