variable "projectid" {
  description = "Google cloud project ID"
#  default = "ferrous-weaver-271700"
}
variable "region" {
  description ="Region in which to manage GCP resources"
 # default = "us-east1-b"
}

variable "service_account_roles" {
  description = "Additional roles to be added to the service account."
  type        = list(string)
}

variable "credentials" {
type = string
description = "Json Credentials file to connect GCP"
}