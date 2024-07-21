resource "linode_nodebalancer" "nodebalancer" {
  label  = var.name
  region = var.region
}
