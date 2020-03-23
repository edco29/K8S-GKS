
#! /bin/sh 
#Cleaning Screen
clear
#Import colors
source _colors.sh

#Description  
echo -e """
                           ${RED}**********${BLUE} Welcome to Challenge Task 1${RED}**********${NOCOLOR}

Please in order to execute correctly this script check carefully the description bellow :

This script recive only 3 inputs :

${GREEN}CREATE ò C ${NOCOLOR}:
 - Create a Google Kubernetes Cluster with only 1 node . 
 -  Pushing docker images to Google Container Registry.
 - Create  2 Deployment with a two dummy python apps.
 - Create one service ( ClusterIp) for balance the request from ingress into the pods 
 - Create a Ingress Controller ( In this example I'm create a Nginx ingress controller) & Ingress resource
    - For Ingress controller we are creating :  Deployment , Service , Configmaps , Secrets , Service Account & Namespace

${GREEN}OUTPUT ò O ${NOCOLOR}:
 - Show all important information about the provisioning process and also for doing troubleshooting in kubernetes

${GREEN}DESTROY ò D ${NOCOLOR}:
- Destroy completely the Google Kubernetes Cluster and kubernetes Objects.

 ${RED} Warnning : Please check out the README file in order to install the tools ( kubectl & terraform) and configure your service account with the apappropriate roles ${NOCOLOR}            
"""

#echo -e "${YELLOW}Please select one option ${NOCOLOR} : "
read -p "Please select one option : " option_var


#Case statement 
case $option_var in
	"CREATE" | "C" | "c" )
		 source _create.sh ;;
	"OUTPUT" | "O" | "o")
		 source _output.sh ;;
	"DESTROY" | "D" | "d")
		source _destroy.sh  ;;
	* )
		echo -e "${RED}Please enter a valid Option${NOCOLOR}" ;;
esac
