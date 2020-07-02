## Azure Active Directory:
  * what is azure ad:
    its user management of azure
    its much more mature than aws IAM
      subscription is nothing plans (billing) 
      tenant is nothing active directory:
         create users 
         and assign permissions
      at a time one subscription have one tenant 
      one tenant at a use multiple subscriptions
  * how to create user in azure ad:
      * authentication:
       * [clickhere](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/add-users-azure-active-directory)
           log into account
            eg: login into azure account
      * authorization:
       * [clickhere](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles)
           do something
           eg: create vm in azure
        Note: we need to assign permission to user based role
           "right access to right person"
           RBAC
     eg: create user and assign vm owner
    # Azure Built in roles:
      # Azure AD roles:
         Global admin : he manitain azure ad and remote ad == fedaration 
         user admin: he maintain azure ad only
                       * create user and assign roles
                       * delete user
         billing admin: maintain only subscriptions
         
       Azure Resource Roles:
         Owner: he can do anything 
                he can create user and delete user and assign roles to user
                create rg and create resource
         contributor: same like owner but he cant create and assign roles
         reader: inspect 
             he cant do create anything
             readonly access
      * Subscription level assign roles
         it applies all resource group in subscription 
      * Resource group level assign  roles
         it applies to all resources in resource group
      * resource level assign roles
         assign role to indivisual resource

  * how to setup windows active directory: 
     * deploy vm with 2 cpu and 4 GB RAM 
     * Login into windows VM 
     * [follow documention](http://pc-addicts.com/setup-active-directory-server-2016/) 



* create users in windows active directory 
* windows ad user migrate/sync to azure active directory uing Azure ad connect

## Topics:
    Azure ad
    subscription
    tenant (active directory)
    * create users
    
    built in roles roles
    Azure Ad
    Resource Roles (RBAC)
       
    * how to migrate windows users to azure ad using Azure Ad coonect 
    * users sync 
  