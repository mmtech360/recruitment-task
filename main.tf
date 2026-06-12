locals {
  name_prefix = "${var.project}-${var.environment}"

  tags = {
    project     = var.project
    environment = var.environment
    owner       = "mo-sha"
    purpose     = "recruitment-task"
  }
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${local.name_prefix}-aue"
  location = var.location
  tags     = local.tags
}
