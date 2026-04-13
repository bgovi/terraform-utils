terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

resource "linode_object_storage_bucket" "this" {
  region = var.region
  label   = var.bucket_name

  # Optional settings
  acl              = var.acl
  cors_enabled     = var.cors_enabled
  versioning       = var.versioning
}

resource "linode_object_storage_key" "this" {
  count = var.create_access_key ? 1 : 0

  label = var.access_key_label

  bucket_access {
    bucket_name  = linode_object_storage_bucket.this.label
    region      = linode_object_storage_bucket.this.region
    permissions  = var.bucket_permissions
  }
}