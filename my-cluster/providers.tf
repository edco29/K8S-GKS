provider "google" {
 # credentials =  file("./k8s.json")
  credentials = file(var.credentials)
  project = var.project_id
  region  = var.region
}
