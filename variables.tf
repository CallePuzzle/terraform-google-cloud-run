/*
** Variables
*/
variable "project" {
  type = string
}

variable "run_service_name" {
  type = string
}

variable "domain_name" {
  type = string
  default = ""
}

variable "image" {
  type = string
}

variable "env_vars" {
  type = list(object(
  {
    name  = string
    value = string
  }
  ))
  default = []
}

variable "resources_requests_cpu" {
  type = string
  default = "100m"
}

variable "resources_requests_memory" {
  type = string
  default = "128Mi"
}

variable "resources_limits_cpu" {
  type = string
  default = "100m"
}

variable "resources_limits_memory" {
  type = string
  default = "128Mi"
}
