resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-tf-${random_uuid.uuid.result}"
  location = var.location
  tags = {
    yor_trace = "6531166b-1e96-45d7-a9ff-939c18040f75"
  }
}