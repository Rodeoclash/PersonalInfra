resource "digitalocean_project" "personal" {
  name        = "Personal"
  description = "Random personal projects"
  purpose     = "Web Application"
  environment = "Production"
  resources   = [
    digitalocean_droplet.personal-sites.urn,
    digitalocean_database_cluster.personal.urn,
    digitalocean_floating_ip.personal-sites.urn
  ]
}
