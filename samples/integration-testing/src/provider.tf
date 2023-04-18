terraform {
  cloud {
    organization = "sonya-pieklik"

    workspaces {
      name = "learn-terraform-azure-pipelines"
    }
  }
}

provider "azurerm" {
  features {}
}
