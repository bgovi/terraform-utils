terraform {
  required_version = ">= 1.5.0"

  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 3.0"
    }
  }
}

provider "linode" {}

module "app_bucket" {
  source = "../../modules/linode-s3"

  region             = var.region
  bucket_name        = var.bucket_name
  acl                = var.acl
  cors_enabled       = var.cors_enabled
  versioning         = var.versioning
  create_access_key  = var.create_access_key
  access_key_label   = var.access_key_label
  bucket_permissions = var.bucket_permissions
}