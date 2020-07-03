## data representaion languages:
    * xml
    * yaml
    * json

 we have 5 kinds of data
   any data we can represnt in the form of key-value pair
     * integer
         age: 27
         hieght: 5.7
     * string:
          name: "gandhi"
     * boolean:
          isindian: true/false or yes/no
     * list/array:
          courses: ["devops","azure","aws","linux"]
          or 
          courses:
           - devops
           - aws
           - azure
           - linux

     * object:
        address:
          hno: 46-50
          street: xxxxxx
          area: xxxx
          pincode: xxxxx
          stae: xxxxx


* yaml is follow indentation (spacing)
* json is follows {}
    start with {
        ends with }

## Cloudformation:
     infra provising tools
     Infrastrature as a code 
     azure -- ARM template  (yaml/json)
     aws -- cloudformation  (yaml/json)

 Terraform -- its for generic (aws/azure/openstack)



## building blocks of Cloudformation template:
      reference: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      * Resouces (ec2 , vpc, RDS etc)  mandatory
      * parameters (making resuable scripts)   optional
      * mapping (flexibility)  optional
      * outputs  optional

## how to create RDS by using Cloudformation template:
    {
      "AWSTemplateFormatVersion" : "2010-09-09",
      "Description" : "this template for creating RDS",
       "Resources" : {
       set of resources
       }


    }
 
    