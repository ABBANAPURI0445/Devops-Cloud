## LAMP Cookbook:
   ```
    sudo apt-get update 
    sudo apt-get install apache2 -y
    sudo systemctl restart apache2 or sudo service apache2 restart
    sudo apt-get install php libapache2-mod-php  php-mysql
    sudo systemctl restart apache2
    sudo nano /var/www/html/info.php  ## open this file
    ----
    <?php
    phpinfo();
    ?>
    ----
   ```
1. __apt-get update__ convert into chef resource
   ```
   apt_update 'updatepackages' do
    action :update
   end
   ```
2. install apache2 __apt-get install apache2__
   ```
   apt_package 'apache2' do
    action :install
   end
   ```
3. __systemctl restart apache2__ convert into chef resorce
   ```
   service 'apache2' do
    action :restart
   end
4. __apt-get install php libapache2-mod-php  php-mysql__ convert into chef resorce
    ```
    apt_package 'php' do
        action :install
    end
    apt_package 'libapache2-mod-php' do
        action :install
    end
    apt_package 'php-mysql' do
        action :install
    end
    ```
  OR
    ```
    ['php','libapache2-mod-php','php-mysql'].each do |packages|
     package packages do
        action :install
     end
    end
    ```
5. repeat 3 step
6. __nano /var/www/html/info.php__  insert content into this file  '<?php
phpinfo(); ?>'
  1. generate file
     ```
     chef generate file . info.php
     ```
  2. wrire recipe
     ```
     cookbook_file '/var/www/html/info.php' do
      source 'info.php'
      action :create
     end
     ```
    