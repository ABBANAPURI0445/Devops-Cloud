## ARM template: 
  Cloudformation -- AWS  
  ARM templates -- Azure
  Terraform -- generic 
### why we neeed IAC:
 1. automate
 2. avoid human errors
 3. minimize human capital

## Anotomy of ARM Templtes:
   1. Resource: 
       vnet
       vm
       storage
   2. varibale:
   3. Parameter:
   4. outputs
   5. Apiprofile
   6. functions
```
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "",
  "apiProfile": "",
  "parameters": {  },
  "variables": {  },
  "functions": [  ],
  "resources": [  ],   //impl
  "outputs": {  }
}
```
## create storage account by using ARM templates:
* scheme
* resource group
* storage account
{
    "$schema": "https://schema.management.azure.com/schemas/2018-05-01/subscriptionDeploymentTemplate.json#",
    "contentVersion": "2.0.0.0",
    "resources": [ 
       // create resource group
        {
        "name": "SAstorage",
        "type": "Microsoft.Resources/resourceGroups",
        "apiVersion": "2020-06-01",
        "location": "westus",
        "properties": {
        }
        },

       // create storage account 
{
    "name": "openmrsfromarm",
    "type": "Microsoft.Storage/storageAccounts",
    "apiVersion": "2019-06-01",
    "sku": {
        "name": "Standard_LRS",
        "tier": "Standard "
    }
    "kind": "StorageV2",
    "location": "westus",
    "properties": {
        "accessTier": "Cool"
    }
}

     ],



}


```

## how to apply to Azure

## create network with subnets:
    1. azure arm template anatomy
    2. arm template reference 
