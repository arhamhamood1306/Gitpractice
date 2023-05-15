terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.17.0"
    }
  }
}
provider "azurerm" {
 
  
  features {

  }
}

resource "azurerm_service_plan" "testplan" {
  name                = "testplan"
  resource_group_name = "Devops-Practice-RG"
  location            = "East US"
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_windows_web_app" "testwebapp1306" {
  name                = "testwebapp1306"
  resource_group_name = "Devops-Practice-RG"
  location            = "East US"
  service_plan_id     = azurerm_service_plan.testplan.id

  site_config {}

 

}