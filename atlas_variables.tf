variable "atlas_address" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_ADDRESS=https://app.terraform.io"
  default     = ""
}
variable "atlas_configuration_name" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_NAME=<workspace name>"
  default     = ""
}
variable "atlas_configuration_slug" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_SLUG=<organization>/<workspace>"
  default     = ""
}
variable "atlas_configuration_version_github_branch" {
  type        = string
  description = "Exposes  TF_VAR_ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH=<branch>"
  default     = ""
}
variable "atlas_configuration_version_github_commit_sha" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA=<sha>"
  default     = ""
}
variable "atlas_run_id" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_RUN_ID=run-<id>"
  default     = ""
}
variable "atlas_workspace_name" {
  type        = string
  description = "Exposes  TF_VAR_ATLAS_WORKSPACE_NAME=<workspace>"
  default     = ""
}
variable "atlas_workspace_slug" {
  type        = string
  description = "Exposes   TF_VAR_ATLAS_WORKSPACE_SLUG=<organization>/<workspace>"
  default     = ""
}
