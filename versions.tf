/*
** Terraform
*/
terraform {
  required_version  = ">=0.12"

  required_providers {
    google      = ">= 2.7, <4.0"
    google-beta = ">= 2.7, <4.0"
  }
}
