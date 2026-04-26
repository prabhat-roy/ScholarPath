resource "google_container_cluster" "this" {
  name     = "scholarpath-${var.environment}"
  location = var.gcp_region
  network            = google_compute_network.this.self_link
  subnetwork         = google_compute_subnetwork.this.self_link
  initial_node_count = 1
  remove_default_node_pool = true

  release_channel { channel = "REGULAR" }

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "svcs"
  }

  workload_identity_config {
    workload_pool = "${var.gcp_project}.svc.id.goog"
  }

  master_authorized_networks_config {
    cidr_blocks { cidr_block = "0.0.0.0/0" display_name = "all" }
  }
}

resource "google_container_node_pool" "default" {
  name     = "default"
  cluster  = google_container_cluster.this.id
  location = var.gcp_region

  autoscaling { min_node_count = var.node_min  max_node_count = var.node_max }

  node_config {
    machine_type    = var.node_machine
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    workload_metadata_config { mode = "GKE_METADATA" }
    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    labels          = { "scholarpath.io/workload" = "general" }
  }
}

# GPU pool for AI proctoring + adaptive learning inference (live classroom).
resource "google_container_node_pool" "gpu" {
  name     = "gpu"
  cluster  = google_container_cluster.this.id
  location = var.gcp_region

  autoscaling { min_node_count = 0  max_node_count = 8 }

  node_config {
    machine_type = "n1-standard-4"
    guest_accelerator { type = "nvidia-tesla-t4"  count = 1 }
    workload_metadata_config { mode = "GKE_METADATA" }
    labels = { "scholarpath.io/workload" = "live-classroom" }
    taint  { key = "scholarpath.io/workload"  value = "live-classroom"  effect = "NO_SCHEDULE" }
  }
}
