## Terraform Graph:
    terraform plan -out tfplan
    terraform graph -draw-cycles -module-depth=0 tfplan | dot -Tsvg > graph-apply.svg
## Terraform taint:
   if you want to recreate resources
   ---
   terraform state list
   terraform taint <statename>


terraform:
  infra provisioning:
     * vpc and ec2 
        time and human errors
        * human capital
        * human error
   * aws cloudformation
   * arm templates
   * troposphere  
   * terraform ---generic 
         public cloud 
         private cloud
         its not support physical machine
* how to write terraform file
   building blocks of terraform
     * provider:
        * aws
        * azure
        * heroku
        * digital ocean
        * gcp
        * openstack

     * variable:
          hard-coding
     * resource:
          vpc
          ec2
          azure vm
     * provisioner:
        terraform with remote exec
        terraform with ansible provisioner
        terraform with chef provisioner
           
     * outputs :
        
    * terraform module -- reuse:
         backend
           local  state
           remote state
         locking
           dynamodb

    * terraform workspace  -- environemnts
       like namespace in k8s
    * terraform functions
    * terraform enterprice

    terraform DSL  -- 
    0.12 json

    