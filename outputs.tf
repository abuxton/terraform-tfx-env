output "tfx-env-map" {
  value       = local.tfx-env-map
  description = "Exposes the environment variables created during a TF(x) (TFC || TFE) run as a map"
}
output "tfx-env-json" {
  value       = jsonencode(local.tfx-env-map)
  description = "Exposes the environment variables created during a TF(x) (TFC || TFE) run as json object, to do with as you wish"
}
