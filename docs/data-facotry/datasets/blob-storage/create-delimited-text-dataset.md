### Table Of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Delimited Dataset](#delimited-dataset)
- [Supported Connectors](#supported-connectors)
- [Properties](#properties)

#### Commit History
```
**Author:** First Step Azure Cloud Services
**Created On:** 2024-03-09
**Last Updated On:** 2024-03-09
```
| Change Date | Description |
|-------------|-------------|
| 2024-03-09 | File Creation |

## Introduction
- A delimited text file is a type of file format used to store tabular data, such as spreadsheet data, in a plain text format. In a delimited text file, each line typically represents a single row of data, and the values within each row are separated or delimited by a specific character, such as a comma (,), tab (\t), semicolon (;), or pipe (|). 
- The most common types of delimited text files are comma-separated values (CSV) files, where commas are used to separate values, and tab-separated values (TSV) files, where tabs are used as the delimiter.
- Delimited text files are commonly used for exchanging data between different applications or for importing/exporting data into/from databases or spreadsheet programs.

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

## Delimited Dataset
- In Azure Data Factory, a delimited text dataset refers to a dataset type that represents data stored in delimited text files, such as CSV (comma-separated values) or TSV (tab-separated values) files.
- When you create a dataset in Azure Data Factory to represent data stored in delimited text files, you specify various properties including the file path, file format settings (e.g., delimiter character, quote character, escape character), column headers, and data types.
- Once you've defined a delimited text dataset, you can use it as a source or sink in your data pipelines within Azure Data Factory. 
- For example, you can use it to ingest data from delimited text files into Azure data stores, transform the data using activities like mapping or filtering, and then load the transformed data into other destinations.
- Overall, delimited text datasets in Azure Data Factory facilitate the integration and processing of data stored in delimited text file formats within data pipelines.

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
Linked Service | Specifies the Name of the Linked Servie that will be used. | Y | DropDown | NA |
| File Path | Specifies the Location where the file is stored, For Blob Storage Connector it accepts below listed params: <ul><li>**Container:** Name of the Storage Container.</li><li>**Directory:** Complete file Path where the file is stored</li><li>**File Name:** Name of the File with its Extension, i.e,. `sample.csv`</li></ul> | Y | Free Text | NA |
| Compression Type | The compression codec used to read/write text files. Allowed values are **bzip2, gzip, deflate, ZipDeflate, TarGzip, Tar, snappy, or lz4**. | N | Drop Down | not compressed |
| Column Delimiter | The character(s) used to separate columns in a file. When the column delimiter is defined as empty string, which means no delimiter, the whole line is taken as a single column. You can consider to use a rare unprintable character that may not exist in your data. Currently Supported Delimiters are <ul><li>*Comma `,`*</li><li>*Semicolon `;`*</li><li>*Pipe `\|`*</li><li>*Tab `\t`*</li><li>*Start Of Heading `\u00001`*</li><li>*No Delimiter*</li></ul>| N | Drop Down | comma `,` |
| Row Delimiter | The character(s) used to separate rows in a file. <ul><li>For Copy activity, the single character or "\r\n" used to separate rows in a file. </li><li>For Mapping data flow, the single or two characters used to separate rows in a file. </li></ul>Supported values are: <ul><li>Default `\r,\n or \r\n`</li><li>Line Feed `\n`</li><li>Carriage Return `\r`</li><li>No Delimiter</li></ul>| N | Drop Down | <ul><li>*Copy Activity:* **Read:** ["\r\n", "\r", "\n"] **Write:** "\r\n"</li><li>*Mapping Dataflow:* **Read:** ["\r\n", "\r", "\n"] **Write:** "\n"</li></ul> |
| Encoding | The encoding type used to read/write test files. Allowed values are as follows: "UTF-8","UTF-8 without BOM", "UTF-16", "UTF-16BE", "UTF-32", "UTF-32BE", "US-ASCII", "UTF-7", "BIG5", "EUC-JP", "EUC-KR", "GB2312", "GB18030", "JOHAB", "SHIFT-JIS", "CP875", "CP866", "IBM00858", "IBM037", "IBM273", "IBM437", "IBM500", "IBM737", "IBM775", "IBM850", "IBM852", "IBM855", "IBM857", "IBM860", "IBM861", "IBM863", "IBM864", "IBM865", "IBM869", "IBM870", "IBM01140", "IBM01141", "IBM01142", "IBM01143", "IBM01144", "IBM01145", "IBM01146", "IBM01147", "IBM01148", "IBM01149", "ISO-2022-JP", "ISO-2022-KR", "ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-13", "ISO-8859-15", "WINDOWS-874", "WINDOWS-1250", "WINDOWS-1251", "WINDOWS-1252", "WINDOWS-1253", "WINDOWS-1254", "WINDOWS-1255", "WINDOWS-1256", "WINDOWS-1257", "WINDOWS-1258". | N | Drop Down | `UTF-8` |
| Quote Character | The single character to quote column values if it contains column delimiter. When quoteChar is defined as empty string, it means there is no quote char and column value is not quoted, and escapeChar is used to escape the column delimiter and itself. | Drop Down | N | double quotes `"`|
| Escape Character | The single character to escape quotes inside a quoted value. When escapeChar is defined as empty string, the quoteChar must be set as empty string as well, in which case make sure all column values don't contain delimiters.| Drop Down | N | backslash `\`|
| First Row As Header | Specifies whether to treat/make the first row as a header line with names of columns. Allowed values are true and false. When first row as header is false, note UI data preview and lookup activity output auto generate column names as Prop_{n} (starting from 0)| Check Box| N | `false` |
| Null Value | Specifies the string representation of null value. | Free Text | N | empty string `""`|

> [!IMPORTANT]
> | Property | Importance |
> |----------|------------|
> | **Compression Type:** | *Currently Copy activity doesn't support "snappy" & "lz4", and mapping data flow doesn't support "ZipDeflate", "TarGzip" and "Tar".*|
> | **Column Delimiter:** | *Only one character is allowed as Column Delimiter.*|
> | **Row Delimiter:**| *When the row delimiter is set to no delimiter (empty string), the column delimiter must be set as no delimiter (empty string) as well. Currently, row delimiter as empty string is only supported for mapping data flow but not Copy activity.*|

> [!NOTE]
> | Property | Note |
> |----------|------|
> | **Column Delimiter** | *Currently, column delimiter as empty string is only supported for mapping data flow but not Copy activity.*|
> | **Encoding** | *Mapping data flow doesn't support UTF-7 encoding & UTF-8 encoding with Byte Order Mark (BOM).* |



