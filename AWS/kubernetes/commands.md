
   10  kubectl get nodes
   11  kubectl get nodes -w
   12  kubectl get nodes
   13  kubectl get nodes -o wide
   14  vi Pod-single.yaml
   15  kubectl apply -f Pod-single.yaml
   16  kubectl get pods
   17  kubectl get pods -o wide
   18  vi Pod.yaml
   19  kubectl apply -f Pod.yaml
   20  vi Pod
   21  vi Pod.yaml
   22  kubectl apply -f Pod.yaml
   23  kubectl get pods
   24  kubectl get pods -o wide
   25  top
   26  vi Pod-tomcat-nginx.yaml
   27  kubectl --help
   28  kubectl apply --help
   29  kubectl apply -f Pod-tomcat-nginx.yaml
   30  kubectl apply --help
   31  vi Pod-tomcat-nginx.yaml
   32  kubectl apply -f Pod-tomcat-nginx.yaml
   33  kubectl get pods
   34  kubectl exec -it pod pod-app /bin/bash
   35  kubectl exec -it  pod-app /bin/bash
   36  kubectl get pods
   37  kubectl decribe pod-app
   38  kubectl describe pod-app
   39  kubectl describe pod pod-app
   40  kubectl describe pod tomcat-nginx
   41  kubectl exec -it pod-app /bin/bash
   42  kubectl get pods
   43  kubectl exec -it pod-app /bin/bash
   44  kubectl exec pod-app -it /bin/bash
   45  kubectl exec --help
   46  kubectl exec pod-app -c app-container  -it /bin/bash
   47  kubectl exec pod pod-app -c app-container  -it /bin/bash
   48  kubectl exec pod/pod-app
   49  kubectl exec pod-app
   50  kubectl exec pod-app -c app-container
   51  kubectl exec pod-app -c app-container /bin/bash
   52  kubectl kubectl exec pod-app -c app-container /bin/bash
   53  kubectl get o[pods
   54  kubectl get pods
   55  kubectl delete pod appserver
   56  ls
   57  kubectl apply -f Pod.yaml
   58  vi Pod
   59  top
   60  vi RC.yaml
   61  kubectl apply -f RC.yaml
   62  kubectl get pods
   63  kubectl get pods -w
   64  kubectl get nodes
   65  kubectl get nodes -w
   66  kubectl get nodes
   67*
   68  kubectl get nodes
   69  kubectl get pods -w
   70  kubectl get rc
   71  kubectl get pods -l rc=app
   72  kubectl get pods
   73  kubectl get pods -l rc=app
   74  kubectl delete pod rc-app-bw42s
   75  kubectl get pods -l rc=app
   76  kubectl get pods
   77  kubectl get pods -l rc=app
   78  kubectl delete pod rc-app-ctdt9
   79  kubectl get pods -l rc=app
   80  kubectl delete pod rc-app-wbk6d rc-app-58zhb
   81  kubectl get pods -l rc=app
   82  kubectl get rc
   83  kubectl scale --help
   84  kubectl scale --replicas=7 rc/rc-app
   85  kubectl get rc
   86  kubectl scale --replicas=2 rc/rc-app
   87  kubectl get rc
   88  kubectl delete -f RC.yaml
   89  kubectl get rc
   90  kubectl get pods
   91  history
