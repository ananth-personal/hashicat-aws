terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.40.0"
    }
  }
  cloud {
    organization = "ananth-hashicorp-terraform-workshop"
    workspaces {
      name = "custom-default-workspace"
    }
  }
}

provider "tfe" {
  token = var.tfe_token
}
