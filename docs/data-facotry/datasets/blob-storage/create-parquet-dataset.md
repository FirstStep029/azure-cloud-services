### Table Of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Parquet Dataset](#parquet-dataset)
- [Supported Connectors](#supported-connectors)
- [Properties](#properties)

#### Commit History
```
Author: First Step Azure Cloud Services
Created On: 2024-03-10
Last Updated On: 2024-03-10
```
| Change Date | Description |
|-------------|-------------|
| 2024-03-10 | File Creation |

## Introduction
- Parquet is an open-source columnar storage format for the Apache Hadoop ecosystem. It is designed to efficiently store and process large amounts of data. Parquet is particularly well-suited for analytics workloads.

## Dataset
- In Azure Data Factory, a dataset is a named view of the data that serves as an input or output for activities in a data pipeline.
-  It represents the structure of the data to be processed and provides the necessary information for Data Factory to interact with various data sources and destinations.
-  Datasets are used as both source and sink in Azure Data Factory pipelines. As a source, a dataset specifies where the data originates from, and as a sink, it specifies where the data should be written to.
-  Datasets identify data within different data stores, such as tables, files, folders, and documents.
-  Datasets in Azure Data Factory typically include the following information
   -  Connection String [Information]
   -  File Format
   -  Schema
   -  Partitioning (or) Filtering

> [!IMPORTANT]
> - *Before you create a dataset, you must create a linked service to link your data store to the service. Linked services are much like connection strings, which define the connection information needed for the service to connect to external resources.*

> [!CAUTION]
> - *Dataset name should start and end with letter or number.*  
> - *Dataset name should only contain letters, numbers or underscores (_).*

## Parquet Dataset
- In Azure Data Factory, a Parquet dataset refers to a configuration or definition of data stored in Parquet format within Azure Data Lake Storage Gen1 or Gen2, Blob Storage, or another supported storage solution.

## Supported Connectors
- Amazon S3
- Amazon S3 Compatable Storage
- Azure Blob
- Azure Data Lake Storage Gen1 [ADLS-GEN-1]
- Azure Data Lake Storage Gen2 [ADLS-GEN-2]
- Azure Files
- File Syste
- FTP
- Google Cloud Storage
- HDFS
- HTTP
- Oracle Cloud Storage
- SFTP

## Properties
| Property | Description | Required | DataType | Default Value |
|----------|-------------|----------|----------|---------------|
| Linked Service | Specifies the Name of the Linked Servie that will be used. | Y | DropDown | NA |
| File Path | Specifies the Location where the file is stored, For Blob Storage Connector it accepts below listed params: <ul><li>**Container:** Name of the Storage Container.</li><li>**Directory:** Complete file Path where the file is stored</li><li>**File Name:** Name of the File with its Extension, i.e,. `sample.csv`</li></ul> | Y | Free Text | NA |
| Compression Type | The compression codec used to read/write text files. Allowed values are **bzip2, gzip, deflate, ZipDeflate, TarGzip, Tar, snappy, or lz4**. | N | Drop Down | not compressed |