resource "google_container_node_pool" "np" {
  name       = var.name
  location   = var.location
  cluster    = var.cluster_name
  node_count = var.node_count


  node_config {
     preemptible  = true
    image_type   = var.image_type
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }
}
