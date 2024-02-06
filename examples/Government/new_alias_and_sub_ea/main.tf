# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

module "mod_enrollment_subscription" {
  #source  = "azurenoops/overlays-subscription/azurerm"
  #version = "x.x.x"
  source = "../../.."

  # Globals
  environment = var.environment

  # Subscription Variables
  create_enrollment_subscription = true
  subscription_name              = "My Subscription"
  alias                          = "DevTest"
  billing_account_name           = "My Billing Account"
  enrollment_account_name        = "My Enrollment Account"
  workload_name                  = "Development"
}
