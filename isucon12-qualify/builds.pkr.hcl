build {
  sources = ["source.azure-arm.isucon12"]
  provisioner "shell" {
    inline = ["/usr/bin/cloud-init status --wait"]
  }

  provisioner "shell" {
    script = "provision.sh"
  }
}
