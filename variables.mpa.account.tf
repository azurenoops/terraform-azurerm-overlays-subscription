# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


########################
# MCA Configuration   ##
########################

variable "create_mpa_subscription" {
  description = "Create a subscription within an Microsoft Partner Account."
  type        = bool
  default     = false  
}

variable "customer_name" {
  description = "The name of the customer for the Microsoft Partner Account."
  type        = string
  default     = null  
}

