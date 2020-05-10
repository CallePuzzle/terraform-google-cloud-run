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
