# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


#######################################
# Enrollment Account Configuration   ##
#######################################

variable "create_enrollment_subscription" {
  description = "Create a subscription within an Enterprise Agreement enrollment."
  type        = bool
  default     = false  
}

variable "billing_account_name" {
  description = "The name of the billing account."
  type        = string
  default     = null
}

variable "enrollment_account_name" {
  description = "The name of the enrollment account."
  type        = string
  default     = null
}

variable "subscription_name" {
  description = "The name of the subscription."
  type        = string
  default     = null
}

