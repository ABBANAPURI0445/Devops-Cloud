kuberenets object:
   * Pod:
     * self healing
     * we cant create more than one Pod
   * Replication Controller:
     * versioning 
   * ReplicaSet:
     * if you want to deploy newer version replicaset require downtime
   * Deployment:
     * without downtime we can deploy new release using deployment
     * deployment uses replicaset
     * replicaset maintain history of version
--- open kubernetes deployment copy from documentation--------https://kubernetes.io/docs/concepts/workloads/controllers/deployment/----
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80

----- open kuberenets api reference , select object , fill each values based on your requirement ------https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/ ----
Note:  Deployment ==> ReplicaSet ==> Pod ==> Container ==> Image

apiVersion: apps/v1
kind: Deployment
metadata:
   name: deploy-appserver  ## deployment name
spec:                                 ## deployment ==> ReplicaSet
  replicas: 2
  selector: 
  template: 
    metadata:
     name: pod-app-d
     labels:
       deploy: app
    spec: 
      containers:
       - image: abbanapurinaresh/myimages:1.0
         name: appserver
         ports:
          - containerPort: 8080


* i want deploy myimages:2.0 without downtime
* roll out myimage:2.0 from myimage:1.0 
----
kubectl set image deployment/deploy-appserver appserver=abbanapurinaresh/myimages:gol2 --record
----
* rollout status
----
kubectl rollout status deployment.v1.apps/deploy-appserver
----
* roll back to myimage:1.0 -- rollout undo
----
----

