## install LAMP on centos using Chef Cookbook: 
[install LAMP on centos](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-centos-7)
  * before writting any automation we need to execute manauly
## manual commands:
  ```
  sudo yum install httpd
  sudo systemctl start httpd.service
  sudo systemctl enable httpd.service
  sudo yum install php php-mysql
  sudo systemctl restart httpd.service
  sudo vi /var/www/html/info.php  ## open this file and insert below content
  ---
  <?php phpinfo(); ?>
  ---
  ```
## Cookbook:
   1. generate cookbook ```cd ~/chef-repo/cookbooks```
      ```
      chef generate cookbook -b LAMP-Centos
      ```
   2. generate recipe ```cd ~/chef-repo/cookbook/LAMP-centos```
      ```
      chef generate recipe . LAMP-centos
      ```
      LAMP-Centos.rb copy into LAMP-centos recipe (open file and insert)
   3. generate file
      ```
      chef generate file . info.php
      ```
## commands convert into chef resource:
   1. sudo yum install httpd
      ```
            yum_package 'httpd' do
            action :install
        end
      ```
   2. sudo systemctl start httpd.service and enable 
      ```
        service 'httpd' do
         action [ :start , :enable ]
        end
      ```
   3. sudo yum install php php-mysql
      ```
      ['php','php-mysql'].each do |packages_centos|
        package packages_centos do
         action :install
        end
      end
      ```
   4. sudo systemctl restart httpd.service
      ```
       service 'httpd' do
         action :restart
       end
      ```
   5. sudo vi /var/www/html/info.php
       1. generate file 
          ```
          chef generate --help
          chef generate file . info.php
         ```
       2. copy info.php file in remote nodes 
          ```
          cookbook_file '/var/www/html/info.php' do
                source 'info.php'
                action :create
         end
         ```
## bootstrap command
   ```
   knife bootstrap 172.31.9.255 -U centos -i /home/ubuntu/chef.pem --sudo -N centos-node
   ```
## cookbook upload to chef server
   1. we need to install berks (one time activity in cookbook)
      ```
      berks install 
      ```
   2. upload to chef server 
      ```
      berks upload
      ``` 
## add to run list 
   1. goto manage chef 
   2. click on nodes ,select  node and bottom right hand side you will see runlist
![add runlist](add%20Run%20list.png)
![add run list2](add%20runlist.png)

## nodes:
   * during convergence period execute this cookbook on remote nodes
   * OR login into node and execute ```sudo chef-client``` 
## Access static web page
   ```http://publicIp/info.php```