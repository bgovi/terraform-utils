variable "label" {
  type    = string
  default = "demo-vm"
}

variable "region" {
  type    = string
  default = "us-east"
}

variable "linode_type" {
  type = string
  #default = g6-nanode-1
}

# variable "ssh_public_key_path" {
#   type    = string
#   default = "~/.ssh/id_ed25519.pub"
# }

# variable "allowed_ssh_cidrs" {
#   type    = list(string)
#   default = ["0.0.0.0/0"]
# }