# variable "linode_token" {
#   description = "Linode API token."
#   type        = string
#   sensitive   = true
# }

variable "region" {
  description = "Linode object storage region."
  type        = string
}

variable "bucket_name" {
  description = "Bucket name."
  type        = string
}

variable "acl" {
  description = "Bucket ACL."
  type        = string
  default     = "private"
}

variable "cors_enabled" {
  description = "Enable CORS."
  type        = bool
  default     = false
}

variable "versioning" {
  description = "Enable bucket versioning."
  type        = bool
  default     = false
}

variable "create_access_key" {
  description = "Create bucket-scoped access key."
  type        = bool
  default     = true
}

variable "access_key_label" {
  description = "Access key label."
  type        = string
  default     = "prod-app-bucket-key"
}

variable "bucket_permissions" {
  description = "Permissions assigned to the created key for this bucket."
  type        = string
  default     = "read_write"
}