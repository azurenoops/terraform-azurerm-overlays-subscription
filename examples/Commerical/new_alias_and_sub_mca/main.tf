# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "mod_mca_subscription" {
  #source  = "azurenoops/overlays-subscription/azurerm"
  #version = "x.x.x"
  source = "../../.."

  # Globals
  environment = var.environment

  # Subscription Variables
  create_mca_subscription = true
  subscription_name       = "My Subscription"
  alias                   = "DevTest"
  billing_account_name    = "My Billing Account"
  billing_profile_name    = "My Billing Profile"
  invoice_section_name    = "My Invoice Section"
  workload_name           = "Development"
}
