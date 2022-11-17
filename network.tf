resource "google_compute_network" "tf_vpc" {
  project                 = "${local.project}"
  name                    = "tf-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "tf_subnet" {
  name          = "tf-subnet"
  region        = "${local.region}"
  network      = google_compute_network.tf_vpc.id
  ip_cidr_range = "10.0.0.0/16"
}
