terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_app" "this" {
  spec {
    name   = var.app_name
    region = var.region

    service {
      name               = var.service_name
      instance_count     = var.instance_count
      instance_size_slug = var.instance_size_slug
      http_port          = var.http_port

      image {
        registry_type = var.registry_type
        registry      = var.registry
        repository    = var.repository
        tag           = var.tag
      }
    }

    ingress {
      rule {
        component {
          name = var.service_name
        }

        match {
          path {
            prefix = "/"
          }
        }
      }
    }
  }
}