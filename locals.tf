locals {
  tfe-git-commit = substr(var.atlas_configuration_version_github_commit_sha, -6, -1)
  tfc-git-commit = substr(var.tfc_configuration_version_git_branch, -6, -1)
  tfx-env-map = {
    "atlas_address"                                 = var.ATLAS_ADDRESS,
    "atlas_configuration_name"                      = var.ATLAS_CONFIGURATION_NAME,
    "atlas_configuration_slug"                      = var.ATLAS_CONFIGURATION_SLUG,
    "atlas_configuration_version_github_branch"     = var.ATLAS_CONFIGURATION_VERSION_GITHUB_BRANCH,
    "atlas_configuration_version_github_commit_sha" = var.ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA,
    "atlas_run_id"                                  = var.ATLAS_RUN_ID,
    "var.atlas_workspace_name"                      = var.ATLAS_WORKSPACE_NAME,
    "atlas_workspace_slug"                          = var.ATLAS_WORKSPACE_SLUG,
    "tfc_configuration_version_git_commit_sha"      = var.TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA,
    "tfc_run_id"                                    = var.TFC_RUN_ID,
    "tfc_workspace_name"                            = var.TFC_WORKSPACE_NAME,
    "tfc_workspace_slug"                            = var.TFC_WORKSPACE_SLUG,
    "tfe_run_id"                                    = var.TFE_RUN_ID,
    "tfe-git-commit"                                = local.tfe-git-commit,
    "tfc-git-commit"                                = local.tfc-git-commit
  }
}
