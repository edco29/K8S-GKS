provider "google" {
  #In order to create a service account  and granted roles and generate a private key  must be have the next roles
  #roles/iam.roleAdmin
  #roles/iam.securityAdmin *
  #roles/iam.serviceAccountAdmin
  #roles/iam.serviceAccountKeyAdmin
  credentials =  file(var.credentials)
  project = var.projectid
  region  = var.region
}