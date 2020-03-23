## ---------------------
## Provider configuration
## ---------------------
variable "project_id" {
  description = "Project ID in GCP"
}

variable "location" {
  description = "Region or zone in which to manage GCP resources"
}

## ---------------------
## Cluster configuration
## ---------------------
variable "name" {
  description = "The name of the cluster, unique within the project and zone"
}

variable "ntw_name" {
  description = "The name of the network to create to run cluster instances"
}

variable "description" {
  description = "Cluster description"
}

variable "zone" {
  description = "The zone the master and nodes specified in initial_node_count should be created in"
}

variable "region" {
  description = "The region"
}

variable "initial_node_count" {
  description = "Number of nodes in the cluster"
}

variable "node_pool_name" {
  description = "Name of the node pool"
}

variable "credentials" {
type = string
description = "Json Credentials file to connect GCP"
}