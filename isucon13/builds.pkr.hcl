packer {
  required_plugins {
    azure = {
      version = ">= 2.0.0"
      source  = "github.com/hashicorp/azure"
    }
  }
}
build {
  sources = ["source.azure-arm.isucon13"]
  provisioner "shell" {
    inline = ["/usr/bin/cloud-init status --wait"]
  }

  provisioner "shell" {
    script = "provision.sh"
  }
}
