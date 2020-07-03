## last class
*  terraform
* building blocks of terraform:
  ----------------------------
   * prvovider "aws" {
       whare do you want create infra
   }
   * variable {
       resuable
   }
   * Resource "ec2" {
       what do you want create
   }
   * Provisioner "remote_shell" {
       sudo apt-get update
       sudo apt-get install tomcat8 -y
   }
   * Output "EC2" {
       publicIP machine
       vpc id
   }



   **
   * Provider
   * resource 
   * output
 * aws:
   vpc
 * azure:
    vnet