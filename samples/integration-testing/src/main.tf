terraform {
  cloud {
    organization = "sonya-pieklik"

    workspaces {
      name = "learn-terraform-azure-pipelines"
    }
  }
}


resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-hello-tf-${random_uuid.uuid.result}"
  location = var.location
}
