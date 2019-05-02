# upgrading the cluster
 1- export KOPS_STATE_STORE="s3://saidcluster.com"
 2- kops edit cluster
 3- kubernetes Version 1.11.8 [change version from 1.11.9 to 1.11.8]
 4- kops update cluster [plan]
 5- kops update cluster --yes [apply]
 6- Scale out ASG from 3-6
 7- kubectl get nodes --insecure-skip-tls-verify=true
 8- kubectl cordon ip-172-20-89-125.us-east-2.compute.internal        --insecure-skip-tls-verify=true  (Put instance to maintain mode)
 9- kubectl drain ip-172-20-89-125.us-east-2.compute.internal       --ignore-daemonsets  --insecure-skip-tls-verify=true  (remove pods running in this node )
 10- kubectl get pods --all-namespaces --insecure-skip-tls-verify=true (verify pods scheduled properly)

11-  watch kubectl get nodes --insecure-skip-tls-verify=true
12-  sudo su - jenkins -s /bin/bash

# ami change 
kops edit ig nodes [change the ami to a specified one]
kops update cluster
kops update cluster --yes
remove node manually

docker version change

security group whitelisting.