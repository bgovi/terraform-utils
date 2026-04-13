variable "region" {
  description = "Linode Object Storage cluster, such as us-east-1."
  type        = string
}

variable "bucket_name" {
  description = "Globally unique bucket name within the selected cluster."
  type        = string
}

variable "acl" {
  description = "Bucket ACL."
  type        = string
  default     = "private"

  validation {
    condition     = contains(["private", "public-read"], var.acl)
    error_message = "acl must be either private or public-read."
  }
}

variable "cors_enabled" {
  description = "Whether CORS is enabled for the bucket."
  type        = bool
  default     = false
}

variable "versioning" {
  description = "Whether bucket versioning is enabled."
  type        = bool
  default     = false
}

variable "create_access_key" {
  description = "Whether to create a bucket-scoped access key."
  type        = bool
  default     = false
}

variable "access_key_label" {
  description = "Label for the Linode object storage access key."
  type        = string
  default     = "tf-bucket-key"
}

variable "bucket_permissions" {
  description = "Permissions for this bucket on the created key."
  type        = string
  default     = "read_write"

  validation {
    condition = contains([
      "read_only",
      "read_write"
    ], var.bucket_permissions)
    error_message = "bucket_permissions must be read_only or read_write."
  }
}