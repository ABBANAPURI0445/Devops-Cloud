* i want deploy java micro service application using Container 
   Webserver:
      3 
      more user
   app server
    gol:1.0 
    gol:2.0  
   db server 
   * these servers always up and running then only application run successfully
 * web server container is crashed 
   application get downtime 
   * admin identify the problem fix issue , start container
     but this proccess require downtime 
* 1000 container
   24/7 we need monitor 
   the problem is we cant monitor the container always 
   its dificult
Cons In Container Technology:
  * no self healing 
  * No Load balancer
  * no autoscaling
  * No rolling update and roll back
Container Technology                vc      COE
  * create Container                      Manage container
##solution is COE:
  Container Orchastration Engine: 
  *  self healing 
  *  Load balancer
  *  autoscaling
  *  rolling update and roll back

COE techologies:
  1 Docker Swarm  -- Dot cloud
  2 K8S           -- 90
     history:
       google 
       go language
       2014 
       google donated to CNCF 
       100  percente Opensource 
  3 OpenShift  -- RedHat
  4 Mesos      -- Apache


## K8s: 
   * cluster:
      combination of Master node and worknodes
      Master Node: brain
       * manage the worknodes(Minion)
       * schedule the container(Pod) on those worker nodes
       * Wokernode:
         * it can be anything:
            * Physical Machine
            * VM
            * Raspberry Pi 
Components:
  * Master:
     Kube apiserver:
       
     Etcd:
       distribute key value pair data
           replicas: 5
           image: tomcat:8
           its maintain current state   
     scheduler:
       the scheduler job
          * once pod is placed on the node the job finist
     Controler manager:
        it maintain desired state = current state
   * worker node:
      * Kubelet(agent):
        * this is only component speak with apiserver
      * Kubeproxy (network)
      * CRI (Docker) 

 * Kubeadm or Kubespray:
    one master and multiple workwoker nodes
 * Cloud providers:
    multiple master and multiple worker nodes
      * EKS
      * AKS
      * GKE 
         
   

