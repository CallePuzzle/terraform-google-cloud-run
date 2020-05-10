/*
** Resources
*/
resource "google_cloud_run_service" "this" {
  name     = var.run_service_name

  location = var.region

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
            cpu = "100m"
            memory = "128Mi"
          }
          limits = {
            cpu = "1000m"
            memory = "512Mi"
          }
        }
      }
      container_concurrency = 20
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_domain_mapping" "this" {
  name = var.domain_name

  location = var.region

  spec {
    route_name = google_cloud_run_service.this.name
  }
}


resource "google_cloud_run_service_iam_binding" "binding" {
  service = google_cloud_run_service.this.name

  location = var.region

  role = "roles/run.invoker"

  members = [
    "allUsers",
  ]
}
