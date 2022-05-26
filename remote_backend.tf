terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ananth-hashicorp-terraform-workshop"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
