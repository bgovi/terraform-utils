variable "label" {
  type = string
}

variable "region" {
  type = string
}

variable "type" {
  type = string
}

variable "engine" {
  type    = string
  default = "postgresql/16"
}

variable "allow_list" {
  type    = list(string)
  default = []
}

variable "cluster_size" {
  type    = integer
  default = 1
}