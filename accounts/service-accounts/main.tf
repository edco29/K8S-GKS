# ----------------------------------------------------------------------------------------------------------------------
# CREATE SERVICE ACCOUNT FOR PROVISIONING KUBERNETES CLUSTER
#warnning:Interpolation-only expressions are deprecated 
# ---

resource "google_service_account" "challengercluster" {
  account_id   = "challengercluster"
  display_name = "Service Account for provisioning Google Kubernetes Cluster"
}

resource "google_service_account_key" "challengekey" {
  service_account_id = google_service_account.challengercluster.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "local_file" "myaccountjson" {
    content     = base64decode(google_service_account_key.challengekey.private_key)
    filename = "./k8s.json"
}
# ----------------------------------------------------------------------------------------------------------------------
# ADD ROLES TO SERVICE ACCOUNT
# Grant the service account the minimum necessary roles and permissions in order to run the GKE cluster
# plus any other roles added through the 'service_account_roles' variable
# ----------------------------------------------------------------------------------------------------------------------
locals {
  all_service_account_roles = concat(var.service_account_roles, [
  ])
}
/*
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/monitoring.viewer",
    "roles/stackdriver.resourceMetadata.writer"
    */
resource "google_project_iam_member" "service_account-roles" {
  for_each = toset(local.all_service_account_roles)

  project = var.projectid
  role    = each.value
  member  = "serviceAccount:${google_service_account.challengercluster.email}"
}