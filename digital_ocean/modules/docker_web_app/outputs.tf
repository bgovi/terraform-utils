output "app_id" {
  value = digitalocean_app.this.id
}

output "live_url" {
  value = digitalocean_app.this.live_url
}

output "default_ingress" {
  value = digitalocean_app.this.default_ingress
}

output "urn" {
  value = digitalocean_app.this.urn
}