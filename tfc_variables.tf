variable "TFC_CONFIGURATION_VERSION_GIT_BRANCH" {
  type        = string
  description = "Exposes TF_VAR_TFC_CONFIGURATION_VERSION_GIT_BRANCH=branchname"
  default     = "test"
}
variable "TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA" {
  type        = string
  description = "Exposes  TF_VAR_TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA=sha"
  default     = ""
}
variable "TFC_RUN_ID" {
  type        = string
  description = "Exposes TF_VAR_TFC_RUN_ID=run-id"
  default     = ""
}
variable "TFC_WORKSPACE_NAME" {
  type        = string
  description = "Exposes TF_VAR_TFC_WORKSPACE_NAME =workspace"
  default     = ""
}
variable "TFC_WORKSPACE_SLUG" {
  type        = string
  description = "Exposes TF_VAR_TFC_WORKSPACE_SLUG = organization/workspace"
  default     = ""
}

