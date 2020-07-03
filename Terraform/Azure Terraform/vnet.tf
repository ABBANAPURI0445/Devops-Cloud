## create resource group
resource "azurerm_resource_group" "rg-tf" {
  name     = "rg-vnet"
  location = "West US"
}
resource "azurerm_virtual_network" "example" {
  name                = "virtualNetwork1"
  location            = "${azurerm_resource_group.rg-tf.location}"
  resource_group_name =  "${azurerm_resource_group.rg-tf.name}"
  address_space       = ["10.0.0.0/16"]


  subnet {
    name           = "subnetA"
    address_prefix = "10.0.1.0/24"
  }

  tags = {
    environment = "Production"
  }
}