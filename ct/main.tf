terraform {
  backend "gcs" {
    bucket  = "callepuzzle-lab-github-continuous-testing"
    prefix  = "terraform-google-cloud-run/tfstate"
  }
}
module "continuous_testing" {
  source = "git::https://github.com/CallePuzzle/terraform-google-github-continuous-testing.git?ref=1.1.0"

  project = "callepuzzle-lab"
  sa_name = "terraform-google-cloud-run-sa"
  sa_roles = ["roles/run.admin"]

  organization = "CallePuzzle"
  repository = "terraform-google-cloud-run"

  github_secret_gcp_names = [
    "CT_PROJECT_ID",
    "CT_REGION",
    "CT_SA_KEY",
    "CT_SA_KEY_JSON",
  ]
}
