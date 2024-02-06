# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

data "azurerm_billing_enrollment_account_scope" "enrollment" {
  count                   = var.create_enrollment_subscription ? 1 : 0
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

data "azurerm_billing_mca_account_scope" "mca" {
  count                = var.create_mca_subscription ? 1 : 0
  billing_account_name = var.billing_account_name
  billing_profile_name = var.billing_profile_name
  invoice_section_name = var.invoice_section_name
}
