# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "mod_alias_subscription" {
  #source  = "azurenoops/overlays-subscription/azurerm"
  #version = "x.x.x"
  source = "../../.."

  # Globals
  environment = var.environment

  # Subscription Variables
  create_subscription_alias = true
  subscription_name         = "My Subscription"
  alias                     = "DevTest"
  subscription_id           = "00000000-0000-0000-0000-000000000000"
  workload_name             = "Development"
}
