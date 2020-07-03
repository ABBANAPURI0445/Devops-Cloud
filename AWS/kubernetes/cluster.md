## Cluster:
   * collection of nodes
     node can be anything master node and worker node
## Mini Kube Cluster:
   one master and one worker node
   use case: testing manifest file
## Kubeadm , KubeSpray:
    one master and Multiple worker nodes
    if master crash then entire cluster in downtime
    use case: test and Dev env
## Cloud Providers:
    Multiple master and worker nodes
    AWS -- EKS (Elastic Kuberenets Service)
    Azure -- AKS (Azure Kuberenets Service)
    GCP   -- GKE (Google Kubernetes Engine)

## Kubeadm:
  Master node:
     * CRI
     ----
     
# Install Docker CE
## Set up the repository:
### Install packages to allow apt to use a repository over HTTPS
apt-get update && apt-get install apt-transport-https ca-certificates curl software-properties-common

### Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

### Add Docker apt repository.
add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

## Install Docker CE.
apt-get update && apt-get install docker-ce=18.06.2~ce~3-0~ubuntu

# Setup daemon.
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

mkdir -p /etc/systemd/system/docker.service.d

# Restart docker.
systemctl daemon-reload
systemctl restart docker
-----

* Kublet , kubectl , kubeadm
------------------------------
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl






* Master and worker node  commands are same
  in Master:
    kubeadm init  
  in worker node
     kubeadm join 172.31.28.58:6443 --token zlcav6.v5vgsjvu3r0ur8x3 \
    --discovery-token-ca-cert-hash sha256:e438896bf682ada598bed6d5b6aed96f7f75860285af4806b415c91079a0d51f 


Goto 
kuberneres master
 as ubuntu
   kubectl get nodes
   ----
ubuntu@ip-172-31-28-58:~$ kubectl get nodes
NAME               STATUS     ROLES    AGE     VERSION
ip-172-31-21-18    NotReady   <none>   14m     v1.18.3
ip-172-31-22-204   NotReady   <none>   8m1s    v1.18.3
ip-172-31-24-139   NotReady   <none>   3m54s   v1.18.3
ip-172-31-28-58    NotReady   master   23m     v1.18.3


* apply Pod network
 Reference: https://v1-16.docs.kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/

 * kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"


 ubuntu@ip-172-31-28-58:~$ kubectl get nodes
NAME               STATUS   ROLES    AGE     VERSION
ip-172-31-21-18    Ready    <none>   14m     v1.18.3
ip-172-31-22-204   Ready    <none>   8m30s   v1.18.3
ip-172-31-24-139   Ready    <none>   4m23s   v1.18.3
ip-172-31-28-58    Ready    master   23m     v1.18.3



 kubectl scale --replicas=7 rc/rc-app