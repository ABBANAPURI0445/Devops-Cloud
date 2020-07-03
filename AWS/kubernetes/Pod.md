smallest unit in VM -- machine
smallest automic unit docker -- container
Pod is automic unit k8s
pod has a conatiner
  pod has a one container loosely couple container
  pod has a multiple containers is called tightly coupled
Pod have ip address which is assign by Kubeproxy
  kubeproxy is component in workernode

how create container in docker:
 steps:
   Dockerfile
   build image
   push image to remote registry
    docker hub , ECR , ACR
   container

how to create Pod:
 Manifest file -- yaml
   tomcat loosely couple container
   -----
   apiVersion: v1
   kind: Pod
   metadata:
      name: appserver   ## pod name
   spec:
    containers:
    - name: appserver   ## container name
      image: tomcat:8   ## image pull from dockerhub
  
   steps:



   apiVersion:        --
   kind: 
   metadata: 
   spec:
    Pod
    what is input of Pod
       container:
         --> image 
## loosely coupled
------Pod manifest-------
apiVersion: v1  ## group/version ex core/v1 --v1
kind: Pod       ## object
metadata:
  name: pod-app   ## Pod name
  labels:
    app: tomcat
spec:    ## inputs -- > containers , image name
  containers:
   - name: app-container
     image: tomcat:8
--------
## tigthly coupled:
-----------------------
apiVersion: v1
kind: Pod
metadata:
  name: tomcat-nginx  ## Pod name
  labels: 
   app: tomcat
   web: nginx
spec:   ## input section
  containers:    ## pod input is container  list
    - name: app-container
      image: tomcat:8
      ports:
      - containerPort:8080
        name: appserver-port
        protocol: TCP
    - name: web-container
      image: nginx
      ports:
      - containerPort:80
        name: webserver-port
        protocol: TCP
-----


* how to get inside of container in Docker
  docker container exec -it containerid /bin/bash

* how to get inside of Pod in Kubernetes
  kubectl exec -it  podname /bin/bash
  eg:
    kubectl exec -it pod-app /bin/bash


     
