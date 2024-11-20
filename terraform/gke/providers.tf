terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
    }
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "itis-441214"
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://terraform-google-modules/kubernetes-engine/google/modules/private-cluster"
  token                  = data.google_client_config.default.access_token
}
