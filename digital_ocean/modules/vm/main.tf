terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_droplet" "this" {
  name   = var.name
  region = var.region
  size   = var.size
  image  = var.image

  ssh_keys = [var.ssh_fingerprint]
}

resource "digitalocean_firewall" "ssh" {
  name = "${var.name}-fw"

  droplet_ids = [digitalocean_droplet.this.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = var.allowed_ssh_cidrs
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0"]
  }
}


# reference ssh.
# data "digitalocean_ssh_key" "laptop" {
#   name = "brandon-laptop"
# }

# resource "digitalocean_droplet" "vm" {
#   name     = var.vm_name
#   region   = var.region
#   size     = var.vm_size
#  image    = "ubuntu-24-04-x64"
#  ssh_keys = [data.digitalocean_ssh_key.laptop.id]
#}