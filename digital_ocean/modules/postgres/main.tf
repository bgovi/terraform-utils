terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_database_cluster" "this" {
  name       = var.name
  engine     = "pg"
  version    = "16"
  region     = var.region
  size       = var.size
  node_count = var.node_count
}