variable "app_name" {
  type    = string
  default = "do-web-test"
}

variable "region" {
  type    = string
  default = "nyc"
}

variable "service_name" {
  type    = string
  default = "web"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_size_slug" {
  type    = string
  default = "basic-xxs"
}

variable "registry_type" {
  type    = string
  default = "DOCKER_HUB"
}

variable "registry" {
  type    = string
  default = "library"
}

variable "repository" {
  type    = string
  default = "nginx"
}

variable "tag" {
  type    = string
  default = "latest"
}

variable "http_port" {
  type    = number
  default = 80
}