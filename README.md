# golang-time-app

task===3=====================================
this is go code which is run by command 
go time.go &  for backgroung view  and accessibel via my ec2 ip ---  http://3.110.190.237:8080/  on port 8080

=======================================================================================================
installed minibube on my ec2
create containerizeed image of go app 
and push is to docker hub ---- link is https://hub.docker.com/repositories/88151

create pod and expose it on 30001 as per task       -=====used commands--------------
kubectl get pods
kubectl get svc
 vim deployment.yaml
    vim service.yaml
     kubectl apply -f deployment.yaml
     kubectl apply -f service.yaml
     kubectl get pods
     kubectl get svc golang-time-app-service
    vim service.yaml
     kubectl apply -f service.yaml


===================================================================task2============================================================
curl -s https://raw.githubusercontent.com/kubescape/kubescape/master/install.sh | /bin/bash
install kubescape and scan the k8s and creats scanned document file
kubespace --version
export PATH=$PATH:/usr/local/bin    ---exported the environment variable 
kubescape scan --format json --output security-findings.json      =--scan the k8s and its finding of vulnerabilty in json format
    




