## minikube:
   one master node and one workernode
   * testing Manifest file 
## Kubeadm:
   make kubernetes cluster
    single master and multiple worker nodes
   * we need maintain multiple master for HA 
  Note: Kubeadm reently support HA
      multiple master and multiple WN 
   * kubeadm not good at multiple master
test: 
  Dev and Test Env
## cloud Providers:
   AKS
   EKS
   GKE 
    * everything maintain and manage by cloud
        master node:
          components
        storage
        network
    EKS:
    ## Steps:
      * launch EC2 machine
      * login into EC2 machine using gitbash 
      * install awscli
        ---
        sudo apt-get update
        sudo apt-get install awscli -y
        ---
    O/P
    ubuntu@ip-172-31-11-42:~$ aws --version
    aws-cli/1.11.13 Python/3.5.2 Linux/4.4.0-1105-aws botocore/1.4.70
 * but eksctl require aws cli version2
 * we need to upgrade
 ------
sudo apt-get install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
---------
* logout from machine
 ---
 exit or logout
 ---
* login and run below command
----
aws --version
----
O/P:
ubuntu@ip-172-31-11-42:~$ aws --version
aws-cli/2.0.24 Python/3.7.3 Linux/4.4.0-1105-aws botocore/2.0.0dev28
----
* Create IAM user with admin permissions
  goto IAM service in console
    create user 
* run below command on Ec2 terminal
----
aws configure
----
$ aws configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: region-code
Default output format [None]: json
----




eksctl create cluster \
--name myeks \
--version 1.16 \
--region us-west-2 \
--nodegroup-name standard-workers \
--node-type t2.micro \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--ssh-access \
--ssh-public-key kubeadm \
--managed 



* internally 
 master:
    EC2 machine
   install all components
     Etcd
     api server
     CM
     Schedlur
    * create Image from ec2 machine
    * create autoscaling
    * Lb
 woker Nodes:
    * ec2 machine
    * components 
        kublet
        kubeproxy
        CRI
     



