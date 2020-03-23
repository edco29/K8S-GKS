#!/bin/sh 
#Import colors
source _colors.sh

echo -e "${CYAN} ***************** Creating Service Account to provisioning Kubernetes Cluster in GCP  *****************${NOCOLOR}"

cd ./accounts/service-accounts

  terraform init
  terraform plan -out svcaccount.plan
  terraform apply "svcaccount.plan"  
  mv k8s.json ../../my-cluster/

cd ..
cd ..
