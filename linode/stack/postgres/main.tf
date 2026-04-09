terraform {
  required_version = ">= 1.5.0"

  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {}

module "postgres" {
  source = "../../modules/linode-postgres"

  label      = var.label
  region     = var.region
  type       = var.db_type
  allow_list = var.allow_list
}