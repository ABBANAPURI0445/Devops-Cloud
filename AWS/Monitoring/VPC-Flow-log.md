## VPC flow log
* packet logs
* terms:
   log event:
     single record 
   log stream:
     group of log events came of same resources
   log group:
     groups of log streams for application/project 

* Packet logs store logs ,any packet comes into network and goes out from network
## steps:
    1 create log group  --> in aws cloud watch service
    2 Goto VPC 
      select Flow log
        create Flow log
          filter 
            all
          IAM Role is required 
## aws cloud watch agent:
   * for pull the logs from aws ec2 machines 