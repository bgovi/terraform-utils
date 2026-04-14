terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {}

# data "http" "my_ip" {
#   url = "https://api.ipify.org"
# }

module "vm" {
  source = "../../modules/vm"

  name              = var.vm_name
  region            = var.region
  size              = var.vm_size
  # ssh_fingerprint   = var.ssh_fingerprint
  #allowed_ssh_cidrs = var.allowed_ssh_cidrs
  # allowed_ssh_cidrs =  ["${trimspace(data.http.my_ip.response_body)}/32"]
}

