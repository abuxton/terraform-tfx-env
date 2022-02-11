locals {
  tfe-git-commit = substr(var.atlas_configuration_version_github_commit_sha, -6, -1)
  tfc-git-commit = substr(var.tfc_configuration_version_git_branch, -6, -1)
  tfx-env-map = {
    "atlas_address"                                 = var.atlas_address,
    "atlas_configuration_name"                      = var.atlas_configuration_name,
    "atlas_configuration_slug"                      = var.atlas_configuration_slug,
    "atlas_configuration_version_github_branch"     = var.atlas_configuration_version_github_branch,
    "atlas_configuration_version_github_commit_sha" = var.atlas_configuration_version_github_commit_sha,
    "atlas_run_id"                                  = var.atlas_run_id,
    "var.atlas_workspace_name"                      = var.atlas_workspace_name,
    "atlas_workspace_slug"                          = var.atlas_workspace_slug,
    "tfc_configuration_version_git_commit_sha"      = var.tfc_configuration_version_git_commit_sha,
    "tfc_run_id"                                    = var.tfc_run_id,
    "tfc_workspace_name"                            = var.tfc_workspace_name,
    "tfc_workspace_slug"                            = var.tfc_workspace_slug,
    "tfe_run_id"                                    = var.tfe_run_id,
    "tfe-git-commit"                                = local.tfe-git-commit,
    "tfc-git-commit"                                = local.tfc-git-commit
  }
}
