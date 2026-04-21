terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "4.69.0"
    }  
  }
}

provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "trial" {
 name = "chetan"
 location = "Westus"
}

resource "azurerm_storage_account" "store" {
    name = "storage123"
    resource_group_name = azurerm_resource_group.trial.name
    location = azurerm_resource_group.trial.location
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}