provider "linode" {
  token = var.linode_token
}

module "nodebalancer" {
  source = "./modules/nodebalancer"
  region = "os-ord"
  name   = "jason-nodebalancer"
}

module "cluster" {
  source = "./modules/cluster/"
  name   = "jason-cluster"
}
