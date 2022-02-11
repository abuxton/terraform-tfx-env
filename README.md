# Terraform Environment Data

This module exposes environmental variables in a TF(x) TFE or TFC, so they can be used for tags or outputs.

Not all variables are always populated due to the differences between deployments and versions of TF(x).

Atlas is a term still in use in TFC and TFE previously the name of Terraform Cloud Service.

## Usage
see `./tests/default` for usage example.

*ALL* variables have a default `""` string, the variables are not expected to be injected with values.

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
| <a name="input_atlas_address"></a> [atlas\_address](#input\_atlas\_address) | Exposes TF\_VAR\_ATLAS\_ADDRESS=https://app.terraform.io | `string` | `""` | no |
| <a name="input_atlas_configuration_name"></a> [atlas\_configuration\_name](#input\_atlas\_configuration\_name) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_NAME=<workspace name> | `string` | `""` | no |
| <a name="input_atlas_configuration_slug"></a> [atlas\_configuration\_slug](#input\_atlas\_configuration\_slug) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_SLUG=<organization>/<workspace> | `string` | `""` | no |
| <a name="input_atlas_configuration_version_github_branch"></a> [atlas\_configuration\_version\_github\_branch](#input\_atlas\_configuration\_version\_github\_branch) | Exposes  TF\_VAR\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_BRANCH=<branch> | `string` | `""` | no |
| <a name="input_atlas_configuration_version_github_commit_sha"></a> [atlas\_configuration\_version\_github\_commit\_sha](#input\_atlas\_configuration\_version\_github\_commit\_sha) | Exposes TF\_VAR\_ATLAS\_CONFIGURATION\_VERSION\_GITHUB\_COMMIT\_SHA=<sha> | `string` | `""` | no |
| <a name="input_atlas_run_id"></a> [atlas\_run\_id](#input\_atlas\_run\_id) | Exposes TF\_VAR\_ATLAS\_RUN\_ID=run-<id> | `string` | `""` | no |
| <a name="input_atlas_workspace_name"></a> [atlas\_workspace\_name](#input\_atlas\_workspace\_name) | Exposes  TF\_VAR\_ATLAS\_WORKSPACE\_NAME=<workspace> | `string` | `""` | no |
| <a name="input_atlas_workspace_slug"></a> [atlas\_workspace\_slug](#input\_atlas\_workspace\_slug) | Exposes   TF\_VAR\_ATLAS\_WORKSPACE\_SLUG=<organization>/<workspace> | `string` | `""` | no |
| <a name="input_tfc_configuration_version_git_branch"></a> [tfc\_configuration\_version\_git\_branch](#input\_tfc\_configuration\_version\_git\_branch) | Exposes TF\_VAR\_TFC\_CONFIGURATION\_VERSION\_GIT\_BRANCH=<branch> | `string` | `""` | no |
| <a name="input_tfc_configuration_version_git_commit_sha"></a> [tfc\_configuration\_version\_git\_commit\_sha](#input\_tfc\_configuration\_version\_git\_commit\_sha) | Exposes  TF\_VAR\_TFC\_CONFIGURATION\_VERSION\_GIT\_COMMIT\_SHA=<sha> | `string` | `""` | no |
| <a name="input_tfc_run_id"></a> [tfc\_run\_id](#input\_tfc\_run\_id) | Exposes TF\_VAR\_TFC\_RUN\_ID=run-<id> | `string` | `""` | no |
| <a name="input_tfc_workspace_name"></a> [tfc\_workspace\_name](#input\_tfc\_workspace\_name) | Exposes TF\_VAR\_TFC\_WORKSPACE\_NAME =<workspace> | `string` | `""` | no |
| <a name="input_tfc_workspace_slug"></a> [tfc\_workspace\_slug](#input\_tfc\_workspace\_slug) | Exposes TF\_VAR\_TFC\_WORKSPACE\_SLUG = <organization>/<workspace> | `string` | `""` | no |
| <a name="input_tfe_run_id"></a> [tfe\_run\_id](#input\_tfe\_run\_id) | Exposes TF\_VAR\_TFE\_RUN\_ID = run-<id> | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfx-env-json"></a> [tfx-env-json](#output\_tfx-env-json) | Exposes the environment variables created during a TF(x) (TFC \|\| TFE) run as json object, to do with as you wish |
| <a name="output_tfx-env-map"></a> [tfx-env-map](#output\_tfx-env-map) | Exposes the environment variables created during a TF(x) (TFC \|\| TFE) run as a map |
<!-- END_TF_DOCS -->

## locals

| Name | Description |
|------|-------------|
| <a name="local_tfe-git-commit"></a> [tfe-git-commit](#local\_tfe-git-commit) | Exposes substr providing git commit hash appended to output map|
| <a name="output_tfc_git_commit"></a> [tfc-git-commit](#output\_tfc_git_commit) | substr providing git commit hash appended to output map|

