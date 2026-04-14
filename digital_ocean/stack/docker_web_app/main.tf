terraform {
  required_version = ">= 1.5.0"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {}

module "app" {
  source = "../../modules/docker_web_app"

  app_name           = var.app_name
  region             = var.region
  service_name       = var.service_name
  instance_count     = var.instance_count
  instance_size_slug = var.instance_size_slug

  registry_type = var.registry_type
  registry      = var.registry
  repository    = var.repository
  tag           = var.tag
  http_port     = var.http_port
}