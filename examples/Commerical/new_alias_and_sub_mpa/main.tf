# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "mod_mpa_subscription" {
  #source  = "azurenoops/overlays-subscription/azurerm"
  #version = "x.x.x"
  source = "../../.."

  # Globals
  environment = var.environment

  # Subscription Variables
  create_mpa_subscription = true
  subscription_name       = "My Subscription"
  alias                   = "DevTest"
  billing_account_name    = "My Billing Account"
  customer_name           = "My Customer"  
  workload_name           = "Development"
}
