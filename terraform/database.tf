resource "digitalocean_database_cluster" "personal" {
  lifecycle {
    prevent_destroy = true
  }

  engine     = "pg"
  name       = "personal"
  node_count = 1
  region     = var.region
  size       = "db-s-1vcpu-1gb"
  version    = "12"
}

// astoria database
resource "digitalocean_database_db" "astoria" {
  cluster_id = digitalocean_database_cluster.personal.id
  name       = "astoria"
}

resource "digitalocean_database_user" "astoria" {
  cluster_id = digitalocean_database_cluster.personal.id
  name       = "astoria"
}

// volt database
resource "digitalocean_database_db" "volt" {
  cluster_id = digitalocean_database_cluster.personal.id
  name       = "volt"
}

resource "digitalocean_database_user" "volt" {
  cluster_id = digitalocean_database_cluster.personal.id
  name       = "volt"
}
