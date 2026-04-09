variable "region" {
  default = "nyc1"
}

variable "vm_name" {
  default = "vm-only"
}

variable "vm_size" {
  type = string
}

variable "ssh_fingerprint" {
  type = string
}

variable "allowed_ssh_cidrs" {
  default = ["0.0.0.0/0"]
}