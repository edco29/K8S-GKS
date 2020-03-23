#!/bin/bash

echo -e "${CYAN}*******************Destroy Google Kubernetes cluster &  service account *******************${NOCOLOR}"

cd ./my-cluster/
echo -e "${CYAN}Destroying Google Kubernetes cluster${NOCOLOR}"

terraform destroy -auto-approve 

cd ../accounts/service-accounts

echo -e "${CYAN}Destroying Google Service Account${NOCOLOR}"
terraform destroy -auto-approve 


echo -e "${CYAN}Deleting intermediate files${NOCOLOR}"
rm -rf *.tfstate*
rm -rf *.plan

cd ../../my-cluster/
rm -rf *.tfstate*
rm -rf *.plan
rm -rf  *.json

