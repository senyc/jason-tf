provider "linode" {
  token = var.linode_token
}

module "nodebalancer" {
  source = "./nodebalancer/"
  region = "os-ord"
  name   = "jason-nodebalancer"
}

module "cluster" {
  source = "./cluster/"
  name   = "jason-cluster"
}
