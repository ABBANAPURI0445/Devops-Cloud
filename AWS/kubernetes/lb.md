apiVersion: v1
kind: Service
metadata: 
  name: lb 
spe: 
  selector: 
    deploy: app
  type: LoadBalancer 
  loadBalancerIP: xxxxxxxx

## if i apply to kubeadm cluster:
   * you need to create lb
   * assign to service manifest file using loadBalancerIP
    ----
apiVersion: v1
kind: Service
metadata: 
  name: lb 
spe: 
  selector: 
    deploy: app
  type: LoadBalancer 
  loadBalancerIP: xxxxxxxx 
----
## if i apply to EKS cluster 
  * create lb and 
  * assign ip address to service
----
apiVersion: v1
kind: Service
metadata: 
  name: lb 
spec: 
  selector: 
    deploy: app
  type: LoadBalancer
  ports:
  - port: 80
    targetPort: 8080
------


* deployment:
    * replicaset
    * Pod
       labels:
         pod: app
* service:
 Type:
   ClusterIp
   LB
  selector: 
      pod: app
   