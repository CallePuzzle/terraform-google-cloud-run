/*
** Variables
*/
variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "run_service_name" {
  type = string
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
  default = "1000m"
}

variable "resources_requests_memory" {
  type = string
  default = "128Mi"
}

variable "resources_limits_cpu" {
  type = string
  default = "1000m"
}

variable "resources_limits_memory" {
  type = string
  default = "128Mi"
}

variable "run_container_concurrency" {
  type = number
  default = 20
}

variable "members_can_invoke" {
  type = list(string)
  default = [
    "allUsers"
  ]
}
