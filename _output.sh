#!/bin/sh

echo -e "${CYAN}*****************Showing  relevant  k8s values *****************${NOCOLOR}"

echo -e "${CYAN}Verify if you are Create your service account and your k8s${NOCOLOR}"
#TODO

echo -e "${CYAN}Service Account values: ${NOCOLOR}"

cd ./accounts/service-accounts
terraform output
cd ..
cd ..

echo -e "${CYAN}Kubernetes  values: ${NOCOLOR}"
cd ./my-cluster/
terraform output


echo -e "${CYAN}Input Kubernetes Variables : ${NOCOLOR}"

cat *.tfvars