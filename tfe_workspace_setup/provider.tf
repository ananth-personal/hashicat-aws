terraform {
  required_providers {
    tfe = {
      token   = var.tfe_token
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
  token    = var.tfe_token
}
