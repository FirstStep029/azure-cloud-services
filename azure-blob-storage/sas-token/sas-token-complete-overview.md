# SAS Token for Azure Blob Storage - [COMPLETE OVERVIEW]

- [SAS Token for Azure Blob Storage - \[COMPLETE OVERVIEW\]](#sas-token-for-azure-blob-storage---complete-overview)
    - [Introduction](#introduction)
    - [Pre-Requisites](#pre-requisites)
    - [Types of shared access signatures](#types-of-shared-access-signatures)
      - [Account SAS](#account-sas)
      - [Service SAS](#service-sas)
      - [User Deligation SAS](#user-deligation-sas)

### Introduction
- SAS [Shared Access Signature] token is a digital signature that enables you to grant restricted access to containers & blobs in your storage account.
- With a SAS, you have granular control over how a client can access your data. 
- Operations that use SAS tokens should be performed only over an HTTPS connection, and SAS URIs should only be distributed on a secure connection such as HTTPS.
- Use it when you want to grant access to storage account resources for a specific time range without sharing your storage account key.

> - SAS tokens are used to grant permissions to storage resources, and should be protected in the same manner as an account key.
> - For *User delegation SAS* the Default time window for the token is 48 Hrs (2 Days) where the maximum time window for the token generation is 7 Days. you cannot create SAS token beyond that.

### Pre-Requisites
- Azure AD Account
- Subscription
- Resource Group
- Azure Blob Storage

### Types of shared access signatures
- Account SAS
- Service SAS
- User Deligation SAS

#### Account SAS
- It is secured with the storage account key.
- An account SAS delegates access to resources in one or more of the storage services.
- All of the operations available via a service or user delegation SAS are also available via an account SAS.

> - Microsoft recommends that you use Azure AD credentials when possible as a security best practice, rather than using the account key, which can be more easily compromised.
> - When your application design requires shared access signatures for access to Blob storage, use Azure AD credentials to create a user delegation SAS when possible for superior security.
> - A user delegation SAS or an account SAS must be an ad hoc SAS. Stored access policies are not supported for the user delegation SAS or the account SAS.

#### Service SAS
- It is secured with the storage account key.
- A service SAS delegates access to a resource in only one of the Azure Storage services such as **Blob storage**, **Queue storage**, **Table storage**, or **Azure Files**.
- All of the operations available via a Account or user delegation SAS are also available via an Service SAS.

> - Microsoft recommends that you use Azure AD credentials when possible as a security best practice, rather than using the account key, which can be more easily compromised.
> - When your application design requires shared access signatures for access to Blob storage, use Azure AD credentials to create a user delegation SAS when possible for superior security.
> - A user delegation SAS or an account SAS must be an ad hoc SAS. Stored access policies are not supported for the user delegation SAS or the account SAS.

#### User Deligation SAS
- It is secured with Azure Active Directory (Azure AD) credentials and also by the permissions specified for the SAS.
- A user delegation SAS applies to Blob storage only. 