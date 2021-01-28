provider "azurerm" {
  features {}
}

variable "prefix" {}
variable "environment" {}
variable "location" {}

resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-tfe-rg-1"
  location = var.location

  tags = {
    "environment" = var.environment
  }
}
