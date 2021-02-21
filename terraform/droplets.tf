resource "digitalocean_droplet" "personal-sites" {
  image  = "78592951"
  name   = "personal-sites"
  region = var.region
  size   = "s-2vcpu-2gb"
  ipv6   = "true"
}
