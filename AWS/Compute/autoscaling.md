## scaling:
    1 vertical scaling
    2 Horizantal scaling (autoscaling)

# Vertical sclaing:
   * chnage the hardware (instance type)
   *  we cant change instance type when machine state is running
   * first stop ec2 machine and change instance type 
   * it require downtime 

# Horizantal scaling: 
   * its associate metric (cpu , ram etc)
   * when ever cpu utilization reaches threshold level create machines
   * when ever cpu utilization comedown to least delete machines
   * no downtime
   * its closly work with cloudwatch alaram

 
 ## How to setup autoscaling:
    * create EC2 machine and login
    * install any server (LAMP )
      ---
      sudo apt-get update
      sudo apt-get install apache2 -y
      sudo systemctl restart apache2
      sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
      sudo systemctl restart apache2
      sudo nano /var/www/html/info.php
       ----
       <?php
       phpinfo();
       ?>
----
    * create image from LAMP
    * create launch configuration
    * create autoscaling group


    ## stress is tools it will put stress on resources(cpu ram etc) artificially 
       stress

    stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10m