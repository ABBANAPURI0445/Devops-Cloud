* infra provisioning tools:
      cloudformation    aws  (json/yaml)
      arm templates     azure (json/yaml)
      terraform       public and private 
            
   terraform:
      opensource
      support languages: (DSL/json)
            before 0.12 -- terraform DSL
            after 0.12  --  json 
     * install terraform:
         in windows 
          choco install terraform
            
     * install in linux
          https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu
     * in MAC
          brew install terraform 

    
    Building block of Terraform:
       
       * Provider: (mandatory)
          where do you want create infrastructure
            Ex:
              AWS 
              Azure
              GCP
              Openstack
        Reference: https://www.terraform.io/docs/providers/index.html
       * Resources: (manadatory)
           what do you want create infrastructure
              networking:
                  VPC       Vnet
                  EC2       vm
                  EKS       AKS
            Reference: https://www.terraform.io/docs/configuration/resources.html
       *  Varaible: (optional)
            for make resuable scripts
       * Output: (optional)
          
       * Provisioning: (optional)
            installing software 
            run commands 

             


Terraform:
  vpc.json 
  vpc.tf
   
   Argument Reference : Inputs
   Attributes Reference: output


   before writting tf file try to create Manually 
     Vpc



     terraform init
     terraform apply 
     terraform destroy




     * install terraform
     * create Vpc
       manually
       terraform file
          vpc.tf
          ---
          terraform init:
               .terraform
          terraform apply
              terraform.tfstate (this file contains current infrastature)
              if you run again (terraform apply)
                  create one more file
                    terraform.tfstate.backup 
                        (this file contains last succcefull infrastracture(state) information)
          terraform destroy
             delete or remove infrastrature
          ---


            