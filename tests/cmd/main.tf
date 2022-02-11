module "env" {
  source = "../.."
  // version = "0.1.0"
}
data "tfe_workspace" "test" {
  name         = var.TFC_WORKSPACE_NAME
  organization = split("/", var.TFC_WORKSPACE_SLUG)[0]
}

locals {
  single_tags = {
    for tag in data.tfe_workspace.test.tag_names : format("%s-%s", "tag", tag) => tag
    if length(regexall("[:]+", tag)) == 0
  }
  compound_tags = {
    for tag in data.tfe_workspace.test.tag_names : split(":", tag)[0] => split(":", tag)[1]
    if length(regexall("[:]+", tag)) > 0
  }
}

# Pass Provider tags


resource "commandpersistence_cmd" "example" {
  program = ["env | sort"]
}
