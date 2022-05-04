# Terraform Environment Data

This module exposes environmental variables in a TF(x) TFE or TFC, so they can be used for tags or outputs.

Not all variables are always populated due to the differences between deployments and versions of TF(x).

Atlas is a term still in use in TFC and TFE previously the name of Terraform Cloud Service.

## Usage
see `./tests/default` for usage example.

available from <https://registry.terraform.io/modules/abuxton/env/tfx/latest>

``` HCL

module "env" {
  source = "../.."
  // version = "0.1.2"
  ATLAS_ADDRESS                                 = var.ATLAS_ADDRESS
  ATLAS_CONFIGURATION_NAME                      = var.ATLAS_CONFIGURATION_NAME
  ATLAS_CONFIGURATION_SLUG                      = var.ATLAS_CONFIGURATION_SLUG
  ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH     = var.ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH
  ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA = var.ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA
  ATLAS_RUN_ID                                  = var.ATLAS_RUN_ID
  ATLAS_WORKSPACE_NAME                          = var.ATLAS_WORKSPACE_NAME
  ATLAS_WORKSPACE_SLUG                          = var.ATLAS_WORKSPACE_SLUG
  TFC_CONFIGURATION_VERSION_GIT_BRANCH          = var.TFC_CONFIGURATION_VERSION_GIT_BRANCH
  TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA      = var.TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA
  TFC_RUN_ID                                    = var.TFC_RUN_ID
  TFC_WORKSPACE_NAME                            = var.TFC_WORKSPACE_NAME
  TFC_WORKSPACE_SLUG                            = var.TFC_WORKSPACE_SLUG
  TFE_RUN_ID                                    = var.TFE_RUN_ID

}

# resource "null_resource" "envs" {
#   provisioner "local-exec" {
#     command = "env| sort "
#   }
# }

output "tfx-env-map_tfe_run_id" {
  # example from map
  value = module.env.tfx-env-map.tfe_run_id
}
output "tfx-env-tfe_run_id" {
  # example from module output
  value = module.env.tfx-env-tfe_run_id
}

```

*ALL* variables have a default `""` string, the variables are not expected to be set with values.

Envisioned as some form of data for use, auditing and utility purposes.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ATLAS_ADDRESS"></a> [ATLAS\_ADDRESS](#input\_ATLAS\_ADDRESS) | Exposes TF\_VAR\_ATLAS\_ADDRESS=https://app.terraform.io | `string` | `""` | no |
| <a name="input_ATLAS_CONFIGURATION_NAME"></a> [ATLAS\_CONFIGURATION\_NAME](#input\_ATLAS\_CONFIGURATION\_NAME) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_NAME=workspace | `string` | `""` | no |
| <a name="input_ATLAS_CONFIGURATION_SLUG"></a> [ATLAS\_CONFIGURATION\_SLUG](#input\_ATLAS\_CONFIGURATION\_SLUG) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_SLUG=organization/workspace | `string` | `""` | no |
| <a name="input_ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH"></a> [ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_BRANCH](#input\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_BRANCH) | Exposes  TF\_VAR\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_BRANCH=branchname | `string` | `""` | no |
| <a name="input_ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA"></a> [ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_COMMIT\_SHA](#input\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_COMMIT\_SHA) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_COMMIT\_SHA=sha | `string` | `""` | no |
| <a name="input_ATLAS_RUN_ID"></a> [ATLAS\_RUN\_ID](#input\_ATLAS\_RUN\_ID) | Exposes TF\_VAR\_ATLAS\_RUN\_ID=run-id | `string` | `""` | no |
| <a name="input_ATLAS_WORKSPACE_NAME"></a> [ATLAS\_WORKSPACE\_NAME](#input\_ATLAS\_WORKSPACE\_NAME) | Exposes  TF\_VAR\_ATLAS\_WORKSPACE\_NAME=workspace | `string` | `""` | no |
| <a name="input_ATLAS_WORKSPACE_SLUG"></a> [ATLAS\_WORKSPACE\_SLUG](#input\_ATLAS\_WORKSPACE\_SLUG) | Exposes   TF\_VAR\_ATLAS\_WORKSPACE\_SLUG=organization/workspace | `string` | `""` | no |
| <a name="input_TFC_CONFIGURATION_VERSION_GIT_BRANCH"></a> [TFC\_CONFIGURATION\_VERSION\_GIT\_BRANCH](#input\_TFC\_CONFIGURATION\_VERSION\_GIT\_BRANCH) | Exposes TF\_VAR\_TFC\_CONFIGURATION\_VERSION\_GIT\_BRANCH=branchname | `string` | `""` | no |
| <a name="input_TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA"></a> [TFC\_CONFIGURATION\_VERSION\_GIT\_COMMIT\_SHA](#input\_TFC\_CONFIGURATION\_VERSION\_GIT\_COMMIT\_SHA) | Exposes  TF\_VAR\_TFC\_CONFIGURATION\_VERSION\_GIT\_COMMIT\_SHA=sha | `string` | `""` | no |
| <a name="input_TFC_RUN_ID"></a> [TFC\_RUN\_ID](#input\_TFC\_RUN\_ID) | Exposes TF\_VAR\_TFC\_RUN\_ID=run-id | `string` | `""` | no |
| <a name="input_TFC_WORKSPACE_NAME"></a> [TFC\_WORKSPACE\_NAME](#input\_TFC\_WORKSPACE\_NAME) | Exposes TF\_VAR\_TFC\_WORKSPACE\_NAME =workspace | `string` | `""` | no |
| <a name="input_TFC_WORKSPACE_SLUG"></a> [TFC\_WORKSPACE\_SLUG](#input\_TFC\_WORKSPACE\_SLUG) | Exposes TF\_VAR\_TFC\_WORKSPACE\_SLUG = organization/workspace | `string` | `""` | no |
| <a name="input_TFE_RUN_ID"></a> [TFE\_RUN\_ID](#input\_TFE\_RUN\_ID) | Exposes TF\_VAR\_TFE\_RUN\_ID = run-id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfx-env-json"></a> [tfx-env-json](#output\_tfx-env-json) | Exposes the environment variables created during a TF(x) (TFC \|\| TFE) run as json object, to do with as you wish |
| <a name="output_tfx-env-map"></a> [tfx-env-map](#output\_tfx-env-map) | Exposes the environment variables created during a TF(x) (TFC \|\| TFE) run as a map |
<!-- END_TF_DOCS -->

## Locals

| Name | Description |
|------|-------------|
| <a name="local_tfe-git-commit"></a> [tfe-git-commit](#local\_tfe-git-commit) | Exposes substr providing git commit hash appended to output map|
| <a name="output_tfc_git_commit"></a> [tfc-git-commit](#output\_tfc_git_commit) | substr providing git commit hash appended to output map|
| <a name="output_tfx-env-map"></a> [tfx-env-map](#output\_tfx-env-map)| exposes all variables as a local map to make output.tf more managable file to extend as needed.|
| <a name="output_tfx-env-tfe_run_id"></a> [tfx-env-tfe_run_id](#output\_tfx-env-tfe_run_id)| Exposed var.TFE_RUN_ID as an output for illustrative purposes.|
