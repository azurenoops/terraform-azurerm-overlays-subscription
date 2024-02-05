# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#---------------------------------------------------------------
# Create a subscription within an Enterprise Agreement enrollment
#---------------------------------------------------------------

resource "azurerm_subscription" "enrollment_sub" {
  count             = var.create_enrollment_subscription ? 1 : 0
  subscription_name = var.subscription_name
  alias             = var.alias == null ? uuid() : var.alias
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.enrollment.0.id
  workload          = var.workload_name == null ? "Production" : var.workload_name

  # Tags
  tags = merge(local.default_tags, var.add_tags)
  lifecycle {
    ignore_changes = [
      billing_scope_id
    ]
  }
}
