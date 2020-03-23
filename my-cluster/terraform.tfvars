#Project info
project_id = "ferrous-weaver-271700"
region = "us-east1"
zone = "us-east1-b"
location = "us-east1-b"
#  Cluster info
name = "my-cluster"
description = "Google Kubernetes Cluser Challenge"
initial_node_count = 1 # number of nodes in the cluster
#Network info
ntw_name = "my-cluster-network" # VPC network name which will be created
node_pool_name = "my-np-k8s"
credentials= "./k8s.json"