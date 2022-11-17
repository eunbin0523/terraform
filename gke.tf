resource "google_container_cluster" "primary" {
  name     = "tf-eb-cluster"
  location = "asia-northeast3"
  initial_node_count = 1
  
  ip_allocation_policy {
  }

  network    = google_compute_network.tf_vpc.name
  subnetwork = google_compute_subnetwork.tf_subnet.name
 
# Enabling Autopilot for this cluster
# enable_autopilot = true
}
