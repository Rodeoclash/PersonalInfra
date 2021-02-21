resource "digitalocean_floating_ip" "personal-sites" {
  droplet_id = digitalocean_droplet.personal-sites.id
  region     = var.region
}
