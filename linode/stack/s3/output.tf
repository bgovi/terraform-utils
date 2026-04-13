output "bucket_name" {
  description = "Bucket name"
  value       = module.app_bucket.bucket_label
}

output "bucket_region" {
  description = "Bucket region"
  value       = module.app_bucket.bucket_region
}

output "bucket_hostname" {
  description = "S3-compatible endpoint hostname"
  value       = module.app_bucket.bucket_hostname
}

output "s3_endpoint" {
  description = "Full S3 endpoint URL"
  value       = "https://${module.app_bucket.bucket_hostname}"
}

output "access_key_id" {
  description = "Access key ID"
  value       = module.app_bucket.access_key_id
  sensitive   = true
}

output "secret_access_key" {
  description = "Secret access key"
  value       = module.app_bucket.secret_key
  sensitive   = true
}

output "s3_base_endpoint" {
  value = "https://${var.region}.linodeobjects.com"
}