terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}


data "linode_sshkeys" "all" {}

locals {
  all_account_ssh_keys = [
    for k in data.linode_sshkeys.all.sshkeys : k.ssh_key
  ]
}


resource "linode_instance" "this" {
  label           = var.label
  region          = var.region
  type            = var.linode_type
  image           = var.image
  authorized_keys = local.all_account_ssh_keys  # [var.ssh_public_key]
  tags            = var.tags
  # user_data = data.template_file.cloud_init.rendered

  metadata {
    # Use templatefile or file function to load the yaml
    user_data = base64encode(file("${path.module}/cloud-init.yaml"))
  }
  
  lifecycle {
    precondition {
      condition     = length(data.linode_sshkeys.all.sshkeys) > 0
      error_message = "No SSH keys found. Aborting to avoid lockout."
    }
  }
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
    ipv4     = var.allowed_ssh_cidrs4
    ipv6     = var.allowed_ssh_cidrs6
  }

  linodes = [linode_instance.this.id]
}