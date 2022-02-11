
output "tfx-env-map" {
  value = module.env.tfx-env-map
}
output "tfx-env-tfe_run_id" {
  value = module.env.tfx-env-map.tfe_run_id
}
