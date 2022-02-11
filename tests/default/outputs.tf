
output "tfx-env-map" {
  value = module.env.tfx-env-map
}
output "tfx-env-map_tfe_run_id" {
  # example from map
  value = module.env.tfx-env-map.tfe_run_id
}
output "tfx-env-tfe_run_id" {
  # example from module output
  value = module.env.tfx-env-tfe_run_id
}
