variable "ATLAS_ADDRESS" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_ADDRESS=https://app.terraform.io"
  default     = ""
}
variable "ATLAS_CONFIGURATION_NAME" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_NAME=<workspace name>"
  default     = ""
}
variable "ATLAS_CONFIGURATION_SLUG" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_SLUG=<organization>/<workspace>"
  default     = ""
}
variable "ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH" {
  type        = string
  description = "Exposes  TF_VAR_ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH=<branch>"
  default     = ""
}
variable "ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA=<sha>"
  default     = ""
}
variable "ATLAS_RUN_ID" {
  type        = string
  description = "Exposes TF_VAR_ATLAS_RUN_ID=run-<id>"
  default     = ""
}
variable "ATLAS_WORKSPACE_NAME" {
  type        = string
  description = "Exposes  TF_VAR_ATLAS_WORKSPACE_NAME=<workspace>"
  default     = ""
}
variable "ATLAS_WORKSPACE_SLUG" {
  type        = string
  description = "Exposes   TF_VAR_ATLAS_WORKSPACE_SLUG=<organization>/<workspace>"
  default     = ""
}
