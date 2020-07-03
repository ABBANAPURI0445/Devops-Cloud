Pod:
 * replicas
 * selfhealing
Replication Controller:
 * adv:
    * replicas
    * selfhealing
 * disadvantge:
   * no version
ReplicaSet:
  * go:1.0 
  * gol:2.0 
     delete old one and deploy new one 
Deployment:
   * we can deploy pods without downtime
      
Service:
   cluster Ip: internal load balancer 
      its work within cluster
    NodePort:
      * it expose to internet 
      * access via worker node ip 
    LB:
      * centralized ip address
         network LB    -- layer 4 lb
        nginx ingress -- layer 7 lb 
