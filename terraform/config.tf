terraform {
  required_version = ">= 0.14"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.5.1"
    }
  }

  backend "s3" {
    bucket                      = "terraform-personal-state"
    endpoint                    = "sfo3.digitaloceanspaces.com"
    key                         = "terraform.tfstate"
    region                      = "us-west-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}

provider "digitalocean" {
}

variable "region" {
  default = "sgp1"
}
