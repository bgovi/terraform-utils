terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

resource "linode_instance" "this" {
  label           = var.label
  region          = var.region
  type            = var.linode_type
  image           = var.image
  authorized_keys = [var.ssh_public_key]
  tags            = var.tags
}

resource "linode_firewall" "this" {
  label           = "${var.label}-fw"
  inbound_policy  = "DROP"
  outbound_policy = "ACCEPT"

  inbound {
    label    = "allow-ssh"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "22"
    ipv4     = var.allowed_ssh_cidrs
    ipv6     = ["::/0"]
  }

  linodes = [linode_instance.this.id]
}