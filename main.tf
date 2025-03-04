terraform {
  required_version = ">= 1.8.0, <2"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.12"
    }
  }
}


data "google_project" "project" {}
