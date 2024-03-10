### Table Of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Excel Dataset](#excel-dataset)
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
- The Excel file format refers to the way data is structured and stored in files created by Microsoft Excel. Excel supports multiple file formats, each designed for different purposes and compatibility with other software.
- Here are some of the common Excel file formats:
  - **XLSX:** This is the default file format used by Excel since Excel 2007. It is based on the Office Open XML (OOXML) standard and is essentially a ZIP-compressed package containing XML files that represent the spreadsheet data, formatting, charts, and other objects.
  - **XLS:** This was the default file format used by Excel before Excel 2007. It is a binary file format and is less compatible with other spreadsheet programs compared to the newer XLSX format.
  - **CSV (Comma-Separated Values):** While not a native Excel format, CSV is widely used for exporting and importing spreadsheet data. CSV files store tabular data as plain text, with each line representing a row and fields separated by commas (or other delimiters).
  - **XLSM:** This is similar to the XLSX format but allows for the inclusion of macros (VBA code). It's commonly used for workbooks containing macros.
  - **XLTX:** This is a template file format used to create new workbooks with predefined formatting, styles, and settings.
  - **XLSB:** This is a binary file format similar to XLS but with improved performance and smaller file sizes. It's often used for large spreadsheets or workbooks with complex calculations.
  - **ODS (OpenDocument Spreadsheet):** While not specific to Excel, ODS is an open standard file format used by other spreadsheet programs like LibreOffice Calc and Google Sheets. It's XML-based and designed for interoperability.

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
> - Currently ADF Supports *.xls* & *.xlsx* formats in Dataset.
> - *.xls* format is not supported while using **HTTP** dataset

> [!CAUTION]
> - *Dataset name should start and end with letter or number.*  
> - *Dataset name should only contain letters, numbers or underscores (_).*

## Excel Dataset
- An Excel dataset in Azure Data Factory is a dataset configuration specifically tailored to work with Excel files as a data source or destination.
- Once you've defined a excel dataset, you can use it as a source in your data pipelines within Azure Data Factory.

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
|Worksheet Mode|Specifies whether Sheet Name (or) Sheet Index for identifying the sheet.| N | Radio Button | Sheet Name |
|Sheet Name|Specifies the Name of the sheet to read the data, This property is enabled when **Sheet Name** is selected in Worksheet mode. | N | Drop Down | NA |
|Sheet Index|Specifies the Index of the sheet to read the data, This property is enabled when **Sheet Index** is selected in Worksheet mode. | N | Drop Down | NA |
|Range|The cell range in the given worksheet to locate the selective data <ul><li>**Not Specified:** Reads the Whole worksheet as a table from first no-empty row and column</li><li>`A3`: reads a table starting from given cell, It dynamically detects the rows below and all the columns at the right. </li><li>`A2:H4`: reads this fixed range as table. </li><li>`A4:A4`: reads single cell. </li></ul>| N | Free Text | NA |
| First Row As Header | Specifies whether to treat/make the first row as a header line with names of columns. Allowed values are true and false. When first row as header is false, note UI data preview and lookup activity output auto generate column names as Prop_{n} (starting from 0)| Check Box| N | `false` |
| Null Value | Specifies the string representation of null value. | Free Text | N | empty string `""`|