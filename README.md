# Azure Subscription Overlay Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![MIT License](https://img.shields.io/badge/license-MIT-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/azurenoops/overlays-subscription/azurerm/)

This Overlay terraform module can manage an Alias for a Subscription - which adds an Alias to an existing Subscription, allowing it to be managed in Terraform or create a new Subscription with a new Alias (Optional) under a Enrollment or Microsoft Customer Account.

## Using Azure Clouds

Since this module is built for both public and us government clouds. The `environment` variable defaults to `public` for Azure Cloud. When using this module with the Azure Government Cloud, you must set the `environment` variable to `usgovernment`. You will also need to set the azurerm provider `environment` variable to the proper cloud as well. This will ensure that the correct Azure Government Cloud endpoints are used. You will also need to set the `location` variable to a valid Azure Government Cloud location.

Example Usage for Azure Government Cloud:

```hcl

provider "azurerm" {
  environment = "usgovernment"
}

module "overlays-subscription" {
  source  = "azurenoops/overlays-subscription/azurerm"
  version = "x.x.x"
  
  location = "usgovvirginia"
  environment = "usgovernment"
  ...
}

```

### Resource Provider List

Terraform requires the following resource providers to be available:

- Microsoft.Network
- Microsoft.Storage
- Microsoft.Compute
- Microsoft.KeyVault
- Microsoft.Authorization
- Microsoft.Resources
- Microsoft.OperationalInsights
- Microsoft.GuestConfiguration
- Microsoft.Insights
- Microsoft.Advisor
- Microsoft.Security
- Microsoft.OperationsManagement
- Microsoft.AAD
- Microsoft.AlertsManagement
- Microsoft.Authorization
- Microsoft.AnalysisServices
- Microsoft.Automation
- Microsoft.Subscription
- Microsoft.Support
- Microsoft.PolicyInsights
- Microsoft.SecurityInsights
- Microsoft.Security
- Microsoft.Monitor
- Microsoft.Management
- Microsoft.ManagedServices
- Microsoft.ManagedIdentity
- Microsoft.Billing
- Microsoft.Consumption

Please note that some of the resource providers may not be available in Azure Government Cloud. Please check the [Azure Government Cloud documentation](https://docs.microsoft.com/en-us/azure/azure-government/documentation-government-get-started-connect-with-cli) for more information.

## Contributing

If you want to contribute to this repository, feel free to to contribute to our Terraform module.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Default Module Usage

The following example demonstrates how to use this module to create a new Alias for an existing Subscription.

```terraform
# Azurerm provider configuration
provider "azurerm" {
  features {}
}

module "overlays-subscription" {
  source  = "azurenoops/overlays-subscription/azurerm"
  version = "x.x.x"
  
  # Global Variables
  environment = "public"

  # Subscription Variables
  subscription_name = "My Subscription"
  subscription_id   = "00000000-0000-0000-0000-000000000000"
  alias             = "myalias"
  
}
```

## Creating a new Alias and Subscription for an Enrollment Account

```terraform
module "overlays-subscription" {
  source  = "azurenoops/overlays-subscription/azurerm"
  version = "x.x.x"
   
    # Global Variables
    environment = "public"

    # Subscription Variables
    create_enrollment_subscription = true
    subscription_name              = "My Subscription"
    alias                          = "DevTest"
    billing_account_name           = "My Billing Account"
    enrollment_account_name        = "My Enrollment Account"
    workload_name                  = "Development"
}
```

## Creating a new Alias and Subscription for an Enrollment Account with a new Microsoft Customer Account

```terraform
module "overlays-subscription" {
  source  = "azurenoops/overlays-subscription/azurerm"
  version = "x.x.x"
   
    # Global Variables
    environment = "public"

    # Subscription Variables
    create_msa_subscription = true
    subscription_name       = "My Subscription"
    alias                   = "DevTest"
    billing_account_name    = "My Billing Account"
    billing_profile_name    = "My Billing Profile"
    invoice_section_name    = "My Invoice Section"
    workload_name           = "Development"   
}
```

## Recommended naming and tagging conventions

Applying tags to your Azure resources, resource groups, and subscriptions to logically organize them into a taxonomy. Each tag consists of a name and a value pair. For example, you can apply the name `Environment` and the value `Production` to all the resources in production.
For recommendations on how to implement a tagging strategy, see Resource naming and tagging decision guide.

>**Important** :
Tag names are case-insensitive for operations. A tag with a tag name, regardless of the casing, is updated or retrieved. However, the resource provider might keep the casing you provide for the tag name. You'll see that casing in cost reports. **Tag values are case-sensitive.**

An effective naming convention assembles resource names by using important resource information as parts of a resource's name. For example, using these [recommended naming conventions](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging#example-names), a public IP resource for a production SharePoint workload is named like this: `pip-sharepoint-prod-westus-001`.

<!-- BEGIN_TF_DOCS -->
<!--Run TF Docs-->
<!-- END_TF_DOCS -->