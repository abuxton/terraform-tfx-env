module "env" {
  source = "../.."
  // version = "0.1.0"
}

resource "null_resource" "envs" {
  provisioner "local-exec" {
    command = "env| sort "
  }
}
