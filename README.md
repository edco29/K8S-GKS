# Terraform Google Kubernetes Service

Aprovisioning kubernetes cluster 

## Requirements
- Google Service Account 


Execute  `./_startup.sh`

Remember that you have to choose between 3 options ( CREATE ò DESTROY ò OUTPUT)

-accounts/service-accounts  -->create a custom service account 
-apps --> 2  python apps

-deployKubernetes -> kubernetes objects (< ingres controller , ingress resource , configmaps , secrets , namespace , rdac >, deployment , service)

-my-cluster --> terraform scripts to create a custom kubernetrs cluster

-terraform-modules --> terraform modules to create kubernetes cluster
-_startup.sh ---> Inizialicer 
