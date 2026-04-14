variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "size" {
  type = string
}

variable "image" {
  type    = string
  default = "ubuntu-24-04-x64"
}

# variable "ssh_fingerprint" {
#   type = string
# }

variable "allowed_ssh_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0", "::/0"]
}

variable "ssh_key_names" {
  type = list(string)
  default = ["bgovi_labtop", "bgovi-main-desktop"]
}