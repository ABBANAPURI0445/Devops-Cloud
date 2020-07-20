## Parameters: 
1. what is parameter 
   1. fill the values give a chance to user
   2. with help of parameters we can write reusable CF template
2. how to create parameter in CF template
   ```
    "vpccidr": {
            "Type" : "String",
            "Default" : "192.168.0.0/16",
            "AllowedValues" : ["192.168.0.0/16", "10.0.0.0/16", "172.16.0.0/16"],
            "Description" : "Enter 192.168.0.0/16, 10.0.0.0/16, or172.16.0.0/16 . Default is 192.168.0.0/16."
    
        },
        "subnet1cidr": {
            "Type" : "String",
            "Default" : "192.168.0.0/24"
        },
        "subnet2cidr": {
            "Type" : "String",
            "Default" : "192.168.1.0/24"
        },
        "subnet3cidr": {
            "Type" : "String",
            "Default" : "192.168.2.0/24"
        },
        "publicsubnetAZ": {
            "Type": "AWS::EC2::AvailabilityZone::Name",
            "Default" : "us-east-1a"
        },
        "privatesubnet1AZ": {
            "Type": "AWS::EC2::AvailabilityZone::Name",
            "Default" : "us-east-1b"
     }
    ```
3. how to define parameter in CF resource
   ```
   "Properties": {
                "CidrBlock": 
                { "Ref": "vpccidr" }
   "Properties": {
                "AvailabilityZone": 
                { "Ref": "publicsubnetAZ" }
    "CidrBlock": 
                { "Ref": "subnet3cidr" }
   ```