resource "linode_lke_cluster" "jason-clusterf" {
    label       = "jason-clustertf"
    k8s_version = "1.30"
    region      = "us-ord"
    tags        = ["prod"]

    pool {
        type  = "g6-standard-1"
        count = 1
    }
}
