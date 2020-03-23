#!/bin/bash

#Import colors
source _colors.sh


source _initserviceaccount.sh

echo -e "${CYAN} ***************** Provisioning Kubernetes Cluster in  Google Kubernetes Cluster *****************${NOCOLOR}"

cd ./my-cluster 

  terraform init
  terraform plan -out k8s.plan
  terraform apply "k8s.plan"  
cd ..

echo -e "${CYAN} ***************** Provisioning Kubernetes Objects in  Google Kubernetes Cluster *****************${NOCOLOR}"

#cd deploykubernetes

#cd  ingress-controller
#kubectl create -f .

#cd ..

#kubectl create -f .