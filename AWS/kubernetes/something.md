* pod dont have self healing
* pod don't have replicas concept

## replicas
  * replication controller:
     * selfhealing
     * create multiple at a time

-----Replication Controller-----
apiVersion: v1
kind: ReplicationController
metadata: 
  name: rc-app  ## RC name
spec: 
  replicas: 5
  selector:  ## select the pod for replicating by using Label
    rc: app
  template:   ## define Pod information    , Replication controller input  
    metadata: 
      name: pod-rc  ## pod name
      labels:
        rc: app
    spec: ## container info  or Pod input
      containers:
        - image: tomcat:8
          name: app-server-container  ## container name
          ports:
          - containerPort: 8080
---------
    
