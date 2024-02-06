# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


#######################################
# Enrollment Account Configuration   ##
#######################################

variable "create_subscription_alias" {
  description = "Create a subscription alias for a existing subscription."
  type        = bool
  default     = false
}

variable "alias" {
  description = "The Alias name for the subscription. This module will generate a new GUID if this is not supplied."
  type        = string
  default     = null
}

variable "subscription_id" {
  description = "The subscription id used for the subscription"
  type        = string
  default     = null
}

