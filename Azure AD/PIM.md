# Privilege Identity Management: (PIM)
  __ Privilege Identity Goverenance__
  Manage , control and monitor Privilege Identity
  AD Plan:
[plan]()https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis

   * Notififaction 
   * Reports
   * Access Reviews  
  * JIT
  * Time-Bound
  * MFA 

## Roles:
  * Azure AD Roles:
     * all about manage Azure Ad and Fedaration user
  * Azure Resource Roles:
     * Azure RBAC:
       * we need to assign right access to right user 
         * Azure built In RBAC Roles
         * Custom RBAC Roles (Json)


```
* Create user and assign Global Admin 
* assign RBAC  -- Owner: he can do anything on resource and he can grant access to other
```
*create one more user and assign Global Admin 
* assign RBAC -- contributor:  he can do anything on resource and he cant grant access to others

*create one more user and assign Global Admin 
* assign RBAC -- reader: inspect 

Assign Roles
 subscription level 
  * it applies to all Resource groups in Subscription 
  * we can create new Resource group 
 Resource Group Level:
  * it applies all Resource(etc Vm , Database)
 
 Resource level:
 * you can assign indivisual resource

  