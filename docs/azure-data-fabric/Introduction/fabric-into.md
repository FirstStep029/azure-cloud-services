### Table Of Contents
- [Introduction](#introduction)
- [Unification with SaaS foundation](#unification-with-saas-foundation)
- [Components of Microsoft Fabric](#components-of-microsoft-fabric)
- [Fabric Terminologies](#fabric-terminologies)

#### Commit History
```
Author: First Step Azure Cloud Services
Created On: 2024-05-25
Last Updated On: 2024-05-25
```
| Change Date | Description |
|-------------|-------------|
| 2024-05-25 | File Creation |

## Introduction

Microsoft Fabric is an end-to-end analytics and data platform designed for enterprises that require a unified solution. It encompasses data movement, processing, ingestion, transformation, real-time event routing, and report building. It offers a comprehensive suite of services including Data Engineering, Data Factory, Data Science, Real-Time Analytics, Data Warehouse, and Databases.

With Fabric, you don't need to assemble different services from multiple vendors. Instead, it offers a seamlessly integrated, user-friendly platform that simplifies your analytics requirements. Operating on a Software as a Service (SaaS) model, Fabric brings simplicity and integration to your solutions.

Microsoft Fabric integrates separate components into a cohesive stack. Instead of relying on different databases or data warehouses, you can centralize data storage with OneLake. AI capabilities are seamlessly embedded within Fabric, eliminating the need for manual integration. With Fabric, you can easily transition your raw data into actionable insights for business users.

Microsoft Fabric was launched at the latest Microsoft Build on May 23, 2023,
And made generally available for purchase at its Ignite conference on November 15, 2023.

## Unification with SaaS foundation

Microsoft Fabric is built on a foundation of Software as a Service (SaaS). It combines both new and existing components from Power BI, Azure Synapse Analytics, Azure Data Factory, and more services into a unified environment. These components are then tailored into customized user experiences.

<p align="center">
  <img width="600" height="200" src=https://learn.microsoft.com/en-us/fabric/get-started/media/microsoft-fabric-overview/fabric-architecture.png#lightbox
  ">
</p>

## Components of Microsoft Fabric

Fabric offers a comprehensive set of analytics experiences designed to work together seamlessly. The platform tailors each of these experiences to a specific persona and a specific task:

<p align="center">
  <img width="180" height="300" src=https://learn.microsoft.com/en-us/fabric/get-started/media/microsoft-fabric-overview/workload-menu.png
  ">
</p>

- PowerBI
- Data Factory
- Data Activator
- Industry Solutions
- Real-Time Intelligence
- Synase Data Engineering
- Synapse Data Science
- Synapse Data Warehouse

## Fabric Terminologies

Terms used in Microsoft Fabric:

Capacity: Capacity is a dedicated set of resources that is available at a given time to be used. Capacity defines the ability of a resource to perform an activity or to produce output. 

Experience: A collection of capabilities targeted to a specific functionality. The Fabric experiences include Synapse Data Warehouse, Synapse Data Engineering, Synapse Data Science, Real-Time Intelligence, Data Factory, and Power BI.

Item: An item a set of capabilities within an experience. Users can create, edit, and delete them. Each item type provides different capabilities. For example, the Data Engineering experience includes the lakehouse, notebook, and Spark job definition items.

Tenant: A tenant is a single instance of Fabric for an organization and is aligned with a Microsoft Entra ID.

Workspace: A workspace is a collection of items that brings together different functionality in a single environment designed for collaboration. It acts as a container that uses capacity for the work that is executed, and provides controls for who can access the items in it. For example, in a workspace, users create reports, notebooks, semantic models, etc.


Synapse Data Engineering:
- Lakehouse
- Notebook
- Spark application
- Apache Spark job
- Apache Spark job definition
- V-order

Data Factory:
- Connector
- Data pipeline
- Dataflow Gen2

Synapse Data Science:
- Data Wrangler
- Experiment
- Model
- Run

Synapse data warehouse:
- SQL analytics endpoint
- Synapse Data Warehouse

Real-Time Intelligence:
- KQL database
- KQL Queryset
- Event stream

OneLake:
- Shortcut

