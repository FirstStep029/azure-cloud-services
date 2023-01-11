# Azure Managed identity Complete Reference

- [Azure Managed identity Complete Reference](#azure-managed-identity-complete-reference)
    - [Azure Managed Identity](#azure-managed-identity)
    - [Types](#types)
      - [System-Assigned](#system-assigned)
      - [User-Assigned](#user-assigned)
    - [Difference Between Managed Identities](#difference-between-managed-identities)

### Azure Managed Identity
- **Managed identities** provide an *automatically managed identity* in Azure Active Directory for applications to use when connecting to resources that support Azure Active Directory (Azure AD) authentication.
- Applications can use managed identities to obtain Azure AD tokens without having to manage any credentials.
- A common challenge for **developers** is the management of secrets, credentials, certificates, and keys used to secure communication between services. *Managed identities eliminate the need for developers to manage these credentials.*
- Managed identities for Azure resources is the new name for the service formerly known as Managed Service Identity (MSI).
- [List of services that supports Managed identity](https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/managed-identities-status)

> - No need to manage credentials. *Credentials aren’t even accessible to you.*
> - You can use managed identities to authenticate to any resource that supports Azure AD authentication.
> - It can be used at no extra cost.

### Types
- There are mainly 2 types of Managed Identities **System** & **User** assigned.

#### System-Assigned
- Some Azure resources by default supports Managed Identity, It allows users to enable Managed Identity directly on the resources.
- When a system managed identity is enabled on a resource.
  - A service principal of a special type is created in Azure AD for the identity.
  - The service principal is tied to the lifecycle of that Azure resource.
  - When the Azure resource is deleted, Azure automatically deletes the service principal.
- By design, only that Azure resource can use this identity to request tokens from Azure AD.
- You authorize the managed identity to have access to one or more services.

#### User-Assigned
- You may also create a managed identity as a standalone Azure resource.
- When you enable a user-assigned managed identity.
  - A service principal of a special type is created in Azure AD for the identity.
  - The service principal is managed separately from the resources that use it.
- User-assigned identities can be used by multiple resources.
- You authorize the managed identity to have access to one or more services.

### Difference Between Managed Identities
| Property | System-Assigned Managed Identity | User-Assigned Managed Identity |
|----------|----------------------------------|--------------------------------|
| Creation | Created as part of resource | Created as a stand-alone resource |
| Life Cycle | Shared life cycle with the Azure resource that the managed identity is created with. When the parent resource is deleted, the managed identity is deleted as well. | Independent life cycle. Must be explicitly deleted. |
| Sharing Across Azure Resources | Can’t be shared. It can only be associated with a single Azure resource. | Can be shared. The same user-assigned managed identity can be associated with more than one Azure resource. |
