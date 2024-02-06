# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#---------------------------------------------------------------
# Create a subscription within an Enterprise Agreement enrollment
#---------------------------------------------------------------

resource "azurerm_subscription" "enrollment_sub" {
  count             = var.create_subscription_alias ? 1 : 0
  subscription_name = var.subscription_name
  subscription_id   = var.subscription_id
  alias             = var.alias == null ? uuid() : var.alias
  workload          = var.workload_name == null ? "Production" : var.workload_name

  # Tags
  tags = merge(local.default_tags, var.add_tags)
  lifecycle {
    ignore_changes = [
      billing_scope_id
    ]
  }
}
