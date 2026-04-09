variable "label" {
  type    = string
  default = "demo-db"
}

variable "region" {
  type    = string
  default = "us-east"
}

variable "db_type" {
  type = string
}

variable "allow_list" {
  type    = list(string)
  default = []
}