terraform {
  required_version = ">= 1.5.0"

  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {}

module "vm" {
  source = "../../modules/linode-vm"

  label             = var.label
  region            = var.region
  linode_type       = var.linode_type
  # ssh_public_key    = file(pathexpand(var.ssh_public_key_path))
  # allowed_ssh_cidrs = var.allowed_ssh_cidrs
  tags              = ["terraform", "vm"]
}