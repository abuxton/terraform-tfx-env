module "env" {
  source = "../.."
  // version = "0.1.2"
}

resource "null_resource" "envs" {
  provisioner "local-exec" {
    command = "env| sort "
  }
}
