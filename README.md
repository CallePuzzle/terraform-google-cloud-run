** Resources

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.1.6 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_run_service.this](https://registry.terraform.io/providers/hashicorp/google/4.13.0/docs/resources/cloud_run_service) | resource |
| [google_cloud_run_service_iam_binding.this](https://registry.terraform.io/providers/hashicorp/google/4.13.0/docs/resources/cloud_run_service_iam_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env_vars"></a> [env\_vars](#input\_env\_vars) | n/a | <pre>list(object(<br>  {<br>    name  = string<br>    value = string<br>  }<br>  ))</pre> | `[]` | no |
| <a name="input_image"></a> [image](#input\_image) | n/a | `string` | n/a | yes |
| <a name="input_members_can_invoke"></a> [members\_can\_invoke](#input\_members\_can\_invoke) | n/a | `list(string)` | <pre>[<br>  "allUsers"<br>]</pre> | no |
| <a name="input_project"></a> [project](#input\_project) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_resources_limits_cpu"></a> [resources\_limits\_cpu](#input\_resources\_limits\_cpu) | n/a | `string` | `"1000m"` | no |
| <a name="input_resources_limits_memory"></a> [resources\_limits\_memory](#input\_resources\_limits\_memory) | n/a | `string` | `"128Mi"` | no |
| <a name="input_resources_requests_cpu"></a> [resources\_requests\_cpu](#input\_resources\_requests\_cpu) | n/a | `string` | `"1000m"` | no |
| <a name="input_resources_requests_memory"></a> [resources\_requests\_memory](#input\_resources\_requests\_memory) | n/a | `string` | `"128Mi"` | no |
| <a name="input_run_container_concurrency"></a> [run\_container\_concurrency](#input\_run\_container\_concurrency) | n/a | `number` | `20` | no |
| <a name="input_run_service_name"></a> [run\_service\_name](#input\_run\_service\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
