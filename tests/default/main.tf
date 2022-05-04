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
