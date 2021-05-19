resource "digitalocean_spaces_bucket" "volt-uploads-production" {
  name   = "volt-uploads-production"
  region = var.region
}

resource "digitalocean_cdn" "volt-uploads-production" {
  origin = digitalocean_spaces_bucket.volt-uploads-production.bucket_domain_name
}

resource "digitalocean_spaces_bucket" "volt-uploads-development" {
  name   = "volt-uploads-development"
  region = var.region
}

resource "digitalocean_cdn" "volt-uploads-development" {
  origin = digitalocean_spaces_bucket.volt-uploads-development.bucket_domain_name
}
