### Table Of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
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
- "Binary file format" is a general term referring to any file format that stores data in binary form, meaning it's encoded in a sequence of 0s and 1s. Unlike text-based file formats (e.g., JSON, XML, CSV) where data is stored as human-readable characters, binary file formats are composed of binary data, which is more compact and often more efficient for storage and processing.
- Binary file formats can vary widely depending on their intended use, application domain, and the type of data they store. Here are some common examples of binary file formats:
  - **Image Formats:** Examples include JPEG, PNG, GIF, BMP, and TIFF. These formats store images in binary form, encoding pixel data, color information, and metadata necessary for rendering the image.
  - **Audio Formats:** Examples include MP3, WAV, AAC, FLAC, and OGG. These formats store audio data in binary form, often using compression techniques to reduce file size while preserving sound quality.
  - **Video Formats:** Examples include MP4, AVI, MKV, MOV, and WMV. These formats store video data in binary form, typically using codecs to compress video and audio streams.
  - **Document Formats:** Examples include PDF (Portable Document Format), DOCX (Microsoft Word), XLSX (Microsoft Excel), PPTX (Microsoft PowerPoint), and EPUB (Electronic Publication). These formats store text, images, tables, and other content in binary form, along with formatting and layout information.
  - **Database Formats:** Examples include SQLite, Microsoft Access (MDB), and proprietary database file formats. These formats store structured data in binary form, optimized for efficient storage and retrieval by database management systems.
  - **Executable Files:** Examples include EXE (Windows executable), DLL (Dynamic Link Library), and ELF (Executable and Linkable Format). These formats store machine code and other binary data that can be executed by a computer's processor.
  - **Archive Formats:** Examples include ZIP, RAR, TAR, and 7z. These formats store multiple files and folders in a compressed binary format, often used for data compression and archival purposes.

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