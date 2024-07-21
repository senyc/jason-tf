provider "linode" {
  token = var.linode_token
}

resource "linode_nodebalancer" "jason-nodebalancer" {
    label = "jason-nodebalancer"
    region = "us-ord"
}

# The name of this "e.g. clusterf refers to a terraform specific label
resource "linode_lke_cluster" "cluster" {
    label       = "jason-cluster"
    k8s_version = "1.30"
    region      = "us-ord"
    tags        = ["prod"]

    pool {
        type  = "g6-standard-1"
        count = 1
    }
}

