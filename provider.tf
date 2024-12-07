provider "azurerm" {
  features {}

  skip_provider_registration = true
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/confing"
  }


}

provider "kubernetes" {
  
    config_path = "~/.kube/confing"


}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 3.90.0" 
    }
  }
}