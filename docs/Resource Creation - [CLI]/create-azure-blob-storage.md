# Create Azure Blob Storage using Azure CLI

- [Create Azure Blob Storage using Azure CLI](#create-azure-blob-storage-using-azure-cli)
    - [1. Pre-Requisite](#1-pre-requisite)
    - [2. Create Storage Account](#2-create-storage-account)


### 1. Pre-Requisite
- As we know that Subscription & Resource Group are two mandatory requirements in-order to create any resource in Azure Cloud Service, we assume that we have already these created.
- An Service Principal must be created and assigned with required role & permission at the Resource Group (level) which we are going to use for the deployment.
- Azure CLI is installed and Configured in the Machine/VM that you are going to perform the CLI operation.

### 2. Create Storage Account
- In order to create new storage using azure cli, you can use the below command.

```commandline
az storage account create --name
                          --resource-group
                          [--access-tier {Cool, Hot, Premium}]
                          [--account-type]
                          [--action]
                          [--allow-append {false, true}]
                          [--allow-blob-public-access {false, true}]
                          [--allow-cross-tenant-replication {false, true}]
                          [--allow-shared-key-access {false, true}]
                          [--assign-identity]
                          [--azure-storage-sid]
                          [--bypass {AzureServices, Logging, Metrics, None}]
                          [--custom-domain]
                          [--default-action {Allow, Deny}]
                          [--default-share-permission {None, StorageFileDataSmbShareContributor, StorageFileDataSmbShareElevatedContributor, StorageFileDataSmbShareReader}]
                          [--domain-guid]
                          [--domain-name]
                          [--domain-sid]
                          [--edge-zone]
                          [--enable-alw {false, true}]
                          [--enable-files-aadds {false, true}]
                          [--enable-files-aadkerb {false, true}]
                          [--enable-files-adds {false, true}]
                          [--enable-hierarchical-namespace {false, true}]
                          [--enable-large-file-share]
                          [--enable-local-user {false, true}]
                          [--enable-nfs-v3 {false, true}]
                          [--enable-sftp {false, true}]
                          [--encryption-key-name]
                          [--encryption-key-source {Microsoft.Keyvault, Microsoft.Storage}]
                          [--encryption-key-type-for-queue {Account, Service}]
                          [--encryption-key-type-for-table {Account, Service}]
                          [--encryption-key-vault]
                          [--encryption-key-version]
                          [--encryption-services {blob, file, queue, table}]
                          [--forest-name]
                          [--https-only {false, true}]
                          [--identity-type {None, SystemAssigned, SystemAssigned,UserAssigned, UserAssigned}]
                          [--immutability-period]
                          [--immutability-state {Disabled, Locked, Unlocked}]
                          [--key-exp-days]
                          [--key-vault-federated-client-id]
                          [--key-vault-user-identity-id]
                          [--kind {BlobStorage, BlockBlobStorage, FileStorage, Storage, StorageV2}]
                          [--location]
                          [--min-tls-version {TLS1_0, TLS1_1, TLS1_2}]
                          [--net-bios-domain-name]
                          [--public-network-access {Disabled, Enabled}]
                          [--publish-internet-endpoints {false, true}]
                          [--publish-microsoft-endpoints {false, true}]
                          [--require-infrastructure-encryption {false, true}]
                          [--routing-choice {InternetRouting, MicrosoftRouting}]
                          [--sam-account-name]
                          [--sas-exp]
                          [--sku {Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS}]
                          [--subnet]
                          [--tags]
                          [--user-identity-id]
                          [--vnet-name]
```
- Some of the Most widly used Parameters during Storage accout creation is given below.
  
| Command | Scope | Default Value | Type | Comments |
|---------|-------|---------------|------|----------|
| name | Mandatory | | String | Name of the Storage Account |
| resource-group | Mandatory | | String | Name of the Resource Group, you can configure the Default RG by running ```az configure --defaults group=<rg_name>``` |
| access-tier | Optional | | String | Access tier used for billing standard blob accounts. Cannot be set for StandardLRS, StandardGRS, StandardRAGRS, or PremiumLRS account types. accepted values [cool, hot, premium] |
| sku | Optional | Standard_RAGRS | String | Storage Account SKU. Accepted Values Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS|
| account-type | Optional | | String | Specifies the Active Directory Account Type. | 

- Below given the Details of Each SKU.

| Type | Abbirivation | Description |
|------|--------------|-------------|
| LRS | Local Redundant Storage | <ul><li>Low Cost Option</li><li>Basic Protection against Server Rack/drive failures</li><li>Mostly Recommended for Non Critical [Development] Usecase. </li></ul> |
| GRS | Geo Redundant Storage | <ul><li>Intermediate option with failover capabilities in a secondary region.</li><li>Mostly Recommended for Backup Servers.</li></ul> |
| ZRS | Zone Redundant Storage | <ul><li>Intermediate option with protection against datacenter-level failures.</li><li>Mostly Recommended for High availability [UAT/PreProd] scenarios.</li></ul> | 
| GZRS | Geo-Zone Redundant Storage | <ul><li>Optimal data protection solution that includes the offering of both GRS & ZRS.</li><li>Mostly Recommended for High availability [PROD] scenarios.</li></ul> |