terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-static-website-jk"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}
