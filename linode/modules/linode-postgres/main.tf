terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

resource "linode_database_postgresql_v2" "this" {
  label        = var.label
  region       = var.region
  type         = var.type
  engine_id    = var.engine
  cluster_size = var.cluster_size
  allow_list   = var.allow_list
}