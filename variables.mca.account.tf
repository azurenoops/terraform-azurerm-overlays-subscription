# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


########################
# MCA Configuration   ##
########################

variable "create_mca_subscription" {
  description = "Create a subscription within an Microsoft Customer Account."
  type        = bool
  default     = false  
}

variable "billing_account_name" {
  description = "The name of the billing account."
  type        = string
  default     = null
}

variable "billing_profile_name" {
  description = "The name of the billing profile."
  type        = string
  default     = null
}

variable "invoice_section_name" {
  description = "The name of the invoice section."
  type        = string
  default     = null
}


