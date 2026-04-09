terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {}

module "db" {
  source = "../../modules/postgres"

  name       = var.db_name
  region     = var.region
  size       = var.db_size
  node_count = 1
}