output "bucket_label" {
  value       = linode_object_storage_bucket.this.label
  description = "Bucket name."
}

output "bucket_region" {
  value       = linode_object_storage_bucket.this.region
  description = "Bucket cluster."
}

output "bucket_hostname" {
  value       = linode_object_storage_bucket.this.hostname
  description = "Bucket hostname."
}

output "access_key_id" {
  value       = try(linode_object_storage_key.this[0].access_key, null)
  description = "Access key ID."
  sensitive   = true
}

output "secret_key" {
  value       = try(linode_object_storage_key.this[0].secret_key, null)
  description = "Secret key."
  sensitive   = true
}