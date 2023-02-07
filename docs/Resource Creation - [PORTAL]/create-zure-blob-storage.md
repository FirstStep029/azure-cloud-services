# Create Azure Blob Storage

- [Create Azure Blob Storage](#create-azure-blob-storage)
    - [Introduction](#introduction)
    - [Basics](#basics)
    - [Advanced](#advanced)
    - [Networking](#networking)
    - [Data Protection](#data-protection)
    - [Encryption](#encryption)


### Introduction
- Azure Storage is a Microsoft-managed service providing cloud storage that is highly available, secure, durable, scalable, and redundant.
- Azure Storage includes **Azure Blobs** (objects), **Azure Data Lake Storage Gen2**, **Azure Files**, **Azure Queues**, & **Azure Tables**.

### Basics
- All The properties and Configuratios inside **Basics** tab is mandatory. 

| Section | Property | Description |
|---------|----------|-------------|
| Project Details | Subscription | Name of the subscription that we need to create storage account. | 
| Project Details | Resource Group | Name of The Resource Group that we need to create storage account. |
| Instance Details | Storage Account Name | Unique Name for the storage account. |
| Instance Details | Region | Region where the storage account needs to be created. |
| Instance Details | Performance | Specifies whether we need to configure **Standard** or **Premium** type storage account. |
| Instance Details | Redundancy | Specifies the Replication Strategy. values like LRS, GRS, ZRS & GZRS. |

- Please find the Redundancy Strategy details in below.

| Type | Abbirivation | Description |
|------|--------------|-------------|
| LRS | Local Redundant Storage | <ul><li>Low Cost Option</li><li>Basic Protection against Server Rack/drive failures</li><li>Mostly Recommended for Non Critical [Development] Usecase. </li></ul> |
| GRS | Geo Redundant Storage | <ul><li>Intermediate option with failover capabilities in a secondary region.</li><li>Mostly Recommended for Backup Servers.</li></ul> |
| ZRS | Zone Redundant Storage | <ul><li>Intermediate option with protection against datacenter-level failures.</li><li>Mostly Recommended for High availability [UAT/PreProd] scenarios.</li></ul> | 
| GZRS | Geo-Zone Redundant Storage | <ul><li>Optimal data protection solution that includes the offering of both GRS & ZRS.</li><li>Mostly Recommended for High availability [PROD] scenarios.</li></ul> |

### Advanced
- All The properties and Configuratios inside **Advanced** tab are listed below. 

| Section | Property | Description |
|---------|----------|-------------|
| Security | Require secure transfer for REST API operations | The secure transfer option enhances the security of your storage account by only allowing REST API operations on the storage account using HTTPs. Any requests using HTTP will be rejected when this setting is enabled. |
| Security | Allow enabling public access on containers | Blob containers, by default, do not permit public access to their content. This setting allows authorized users to selectively enable public access on specific containers. |
| Security | Enable storage account key access | When storage account key access is disabled, any requests to the account that are authorized with Shared Key, including shared access signatures (SAS), will be denied. Client applications that currently access the storage account using shared key will no longer work. |
| Security | Default to Azure Active Directory authorization in the Azure portal | When this property is enabled, the Azure portal authorizes requests to blobs, queues, and tables with Azure Active Directory by default. |
| Security | Minimum TLS version | Specifies the Transport Layer Security version, always the masimum stable release. |
| Security | Permitted scope for copy operations (preview) | Restrict copy operations from source storage accounts that are within the same Azure AD tenant or that have a private link to the same virtual network as this storage account. |
| Data Lake Storage Gen2 | Enable hierarchical namespace | Enables ADLS GEN2 Storage. |
| Blob Storage | Enable SFTP | Enables the SSH File Transfer Protocol for your storage account that allows users to access blobs via an SFTP endpoint. Local users need to be created before the SFTP endpoint can be accessed. **To enable SFTP, 'hierarchical namespace' must be enabled.**|
| Blob Storage | Enable network file system v3 | Enables the Network File System Protocol for your storage account that allows users to share files across a network. This option must be set during storage account creation. **To enable NFS v3 'hierarchical namespace' must be enabled.** |
| Blob Storage | Allow cross-tenant replication | Allow object replication to copy blobs to a destination account on a different Azure Active Directory (Azure AD) tenant. Not enabling cross-tenant replication will limit object replication within the same Azure AD tenant. |
| Blob Storage | Access Tier | The account access tier is the default tier that is inferred by any blob without an explicitly set tier. The hot access tier is ideal for frequently accessed data, and the cool access tier is ideal for infrequently accessed data. |
| Azure Files | Enable large file shares | Provides file share support up to a maximum of 100 TiB. Large file share storage accounts do not have the ability to convert to geo-redundant storage offerings and upgrade is permanent. |

### Networking
- All The properties and Configuratios inside **Networking** tab are listed below. 

| Section | Property | Description |
|---------|----------|-------------|
| Network Connectivity | Network Access | You can connect to your storage account either publicly, via public IP addresses or service endpoints, or privately, using a private endpoint. |
| Network routing | Routing Preference | Determine how to route your traffic as it travels from the source to its Azure endpoint. Microsoft network routing is recommended for most customers. |

### Data Protection
- All The properties and Configuratios inside **Data Protection** tab are listed below. 

**Note:**
> - **Recovery:** Protect your data from accidental or erroneous deletion or modification.
> - **Tracking:** Manage versions and keep track of changes made to your blob data.


| Section | Property | Description |
|---------|----------|-------------|
| Recovery | Enable point-in-time restore for containers | Use point-in-time restore to restore one or more containers to an earlier state. If point-in-time restore is enabled, then versioning, change feed, and blob soft delete must also be enabled. |
| Recovery | Enable soft delete for blobs | Soft delete enables you to recover blobs that were previously marked for deletion, including blobs that were overwritten. Default Retention days is set to 7 days. |
| Recovery | Enable soft delete for containers | Soft delete enables you to recover containers that were previously marked for deletion. Default Retention days is set to 7 days. |
| Recovery | Enable soft delete for file shares | Soft delete enables you to recover file shares that were previously marked for deletion. Default Retention days is set to 7 days. |
| Tracking | Enable versioning for blobs | Use versioning to automatically maintain previous versions of your blobs. Consider your workloads, their impact on the number of versions created, and the resulting costs. Optimize costs by automatically managing the data lifecycle.|
| Tracking | Enable blob change feed | Keep track of create, modification, and delete changes to blobs in your account. |
| Access Control | Enable version-level immutability support | Allows you to set time-based retention policy on the account-level that will apply to all blob versions. Enable this feature to set a default policy at the account level. Without enabling this, you can still set a default policy at the container level or set policies for specific blob versions. Versioning is required for this property to be enabled. |

### Encryption
- All The properties and Configuratios inside **Encryption** tab are listed below. 

| Property | Description |
|----------|-------------|
| Encryption Type | Specifies What type of encryption to use for data proection. By Default MMK (Microsoft Managed Keys) were prefered. For additional control over your data, encrypt using customer-managed keys via the Azure Key Vault. |
| Enable support for customer-managed keys | Specifies CMK (Customer Managed Key) support level to specific service such as Blob & Files or all services. Once The storage account is created this property cannot be changed. |
| Enable infrastructure encryption | By default, Azure encrypts storage account data at rest. Infrastructure encryption adds a second layer of encryption to your storage account’s data. |