# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###############
# Outputs    ##
###############

# Add outputs for the resource
output "alias_sub_id" {
  value       = var.create_subscription_alias ? azurerm_subscription.alias_sub.id : null
  description = "The ID of the subscription alias"
}

output "enrollment_sub_id" {
  value       = var.create_enrollment_subscription ? azurerm_subscription.enrollment_sub.id : null
  description = "The ID of the subscription within an Enterprise Agreement enrollment"
}

output "mca_sub_id" {
  value       = var.create_mca_subscription ? azurerm_subscription.mca_sub.id : null
  description = "The ID of the subscription within an Microsoft Customer Account"
}

output "mpa_sub_id" {
  value       = var.create_mpa_subscription ? azurerm_subscription.mpa_sub.id : null
  description = "The ID of the subscription within an Microsoft PArtner Account"
}
