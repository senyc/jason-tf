resource "linode_lke_cluster" "cluster" {
  label       = var.name
  k8s_version = "1.30"
  region      = "us-ord"
  tags        = ["prod"]

  pool {
    type  = "g6-standard-1"
    count = 1
  }
}
