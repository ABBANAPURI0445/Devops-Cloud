## disadvantage in replication controller 
* RC not maintaining versioning
## ReplicaSet:
*  newer version of Replication Contoller 
## ReplicaSet: 
* self healing , create multiple Pods , maintain older releas
## Manifest file:
-----
apiVersion: apps/v1
kind: ReplicaSet
metadata: 
  name: rs-app
spec:
  replicas: 2
  selector: 
   matchLabels:
    rs: app
  template: 
    metadata:
      name: pod-rs-app
      labels:
        rs: app
    spec:   
      containers:
      - name: rc-app-c1
        image: tomcat: 8
-----
      