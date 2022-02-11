variable "tfc_configuration_version_git_branch" {
  type        = string
  description = "Exposes TF_VAR_TFC_CONFIGURATION_VERSION_GIT_BRANCH=<branch>"
  default     = ""
}
variable "tfc_configuration_version_git_commit_sha" {
  type        = string
  description = "Exposes  TF_VAR_TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA=<sha>"
  default     = ""
}
variable "tfc_run_id" {
  type        = string
  description = "Exposes TF_VAR_TFC_RUN_ID=run-<id>"
  default     = ""
}
variable "tfc_workspace_name" {
  type        = string
  description = "Exposes TF_VAR_TFC_WORKSPACE_NAME =<workspace>"
  default     = ""
}
variable "TFC_WORKSPACE_SLUG" {
  type        = string
  description = "Exposes TF_VAR_TFC_WORKSPACE_SLUG = <organization>/<workspace>"
  default     = ""
}

