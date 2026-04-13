variable "label" {
  type = string
}

variable "region" {
  type = string
}

variable "linode_type" {
  type = string
}

variable "image" {
  type    = string
  default = "linode/ubuntu24.04"
}

# variable "ssh_public_key" {
#   type = string
# }

variable "allowed_ssh_cidrs4" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "allowed_ssh_cidrs6" {
  type    = list(string)
  default = ["::/0"]
}


variable "tags" {
  type    = list(string)
  default = []
}