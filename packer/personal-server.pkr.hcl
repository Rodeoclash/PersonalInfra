source "digitalocean" "personal-sites" {
  image              = "debian-10-x64"
  region             = "sgp1"
  size               = "s-2vcpu-2gb"
  ssh_username       = "root"
}

build {
  sources = [
    "source.digitalocean.personal-sites"
  ]

  provisioner "ansible" {
    playbook_file = "./ansible/playbook.yml"
  }
}
