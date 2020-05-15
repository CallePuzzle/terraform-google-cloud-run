/*
** Resources
*/
resource "google_cloud_run_service" "this" {
  name     = var.run_service_name
  location = var.region
  project = var.project_id

  metadata {
    namespace = var.project_id
  }

  template {
    spec {
      containers {
        image = var.image
        dynamic "env" {
          for_each = var.env_vars
          content {
            name  = env.value["name"]
            value = env.value["value"]
          }
        }
        resources {
          requests = {
            cpu = var.resources_requests_cpu
            memory = var.resources_requests_memory
          }
          limits = {
            cpu = var.resources_limits_cpu
            memory = var.resources_limits_memory
          }
        }
      }
      container_concurrency = 20
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }
}

resource "google_cloud_run_domain_mapping" "this" {
  count = var.domain_name == "" ? 0 : 1

  name = var.domain_name
  location = var.region
  project = var.project_id

  metadata {
    namespace = var.project_id
  }

  spec {
    route_name = google_cloud_run_service.this.name
  }
}

resource "google_cloud_run_service_iam_binding" "this" {
  service = google_cloud_run_service.this.name
  project = var.project_id
  location = var.region

  role = "roles/run.invoker"
  members = var.members_can_invoke
}
