# Install initial PostgreSQL 1 cluster and verify it exists
sudo pg_lsclusters 

# create a second postgres cluster 
<!--sudo pg_createcluster 11 replica1
sudo pg_ctlcluster 11 replica1 status-->
sudo systemctl status postgresql@11-main 

# create archive directories for both clusters 
sudo -H -u postgres mkdir /var/lib/postgresql/pg_log_archive/main 
<!--sudo -H -u postgres mkdir /var/lib/postgresql/pg_log_archive/replica1-->

## Configure Main Cluster (Primary / Master) ################################################### 

# edit configuration file 
sudo nano /etc/postgresql/11/main/postgresql.conf 

  wal_level = replica 
  wal_log_hints = on 
  archive_mode = on # (change requires restart) 
  archive_command = 'test ! -f /var/lib/postgresql/pg_log_archive/main/%f && cp %p /var/lib/postgresql/pg_log_archive/main/%f' 
  max_wal_senders = 10
  wal_keep_segments = 64 
  hot_standby = on 

# edit host based access file 
sudo nano /etc/postgresql/11/main/pg_hba.conf 

  local replication rep_user trust # DO NOT USE. Configure your own connection and authentication information  
  # TYPE  DATABASE        USER            ADDRESS                 METHOD
host    replication     foo             192.168.1.100/32        md5

# create replication user 
sudo -H -u postgres psql -c "CREATE USER rep_user WITH replication;" 



# restart the main cluster 
sudo systemctl restart postgresql@11-main 

## Configure Replica1 Cluster ################################################################### 

# stop replica1 cluster 
sudo systemctl stop postgresql@11-replica1 

# edit configuration file 
sudo nano /etc/postgresql/11/replica1/postgresql.conf 

  wal_level = replica 
  wal_log_hints = on 
  archive_mode = on # (change requires restart) 
  archive_command = 'test ! -f /var/lib/postgresql/pg_log_archive/replica1/%f && cp %p /var/lib/postgresql/pg_log_archive/replica1/%f' 
  max_wal_senders = 11 
  wal_keep_segments = 64 
  hot_standby = on 

# edit host based access file 
sudo nano /etc/postgresql/11/replica1/pg_hba.conf 

  local replication rep_user trust 

## Setup Replica1 Cluster Replication ###########################################################

# remove replica1 existing database files 
sudo su - postgres 
rm -rf /var/lib/postgresql/11/replica1 

# sync replica1 with main cluster 
pg_basebackup -D /var/lib/postgresql/11/replica1 -U replication -P # -X stream 

# configure recovery.conf 
nano /var/lib/postgresql/11/replica1/recovery.conf 

  restore_command = 'cp /var/lib/postgresql/pg_log_archive/replica1/%f %p' 
  recovery_target_timeline = 'latest' 
  primary_conninfo = 'host=192.168.1.50 port=5432 user=foo password=foopass'
  standby_mode = 'on'
  primary_slot_name = 'node_a_slot'

# start replica cluster and verify in sync 
sudo pg_ctlcluster 11 replica1 start 
tail -n 100 /var/log/postgresql/postgresql-10-replica1.log 
