### Data Platforms, Data Stores, and Security

The architecture of a data platform can be seen as a set of layers, or functional components, each one performing a set of specific tasks. These layers include:

* Data Ingestion or Data Collection Layer, responsible for bringing data from source systems into the data platform.

* Data Storage and Integration Layer, responsible for storing and merging extracted data.

* Data Processing Layer, responsible for validating, transforming, and applying business rules to data.

* Analysis and User Interface Layer, responsible for delivering processed data to data consumers.

* Data Pipeline Layer, responsible for implementing and maintaining a continuously flowing data pipeline.

A well-designed data repository is essential for building a system that is scalable and capable of performing during high workloads. 

The choice or design of a data store is influenced by the type and volume of data that needs to be stored, the intended use of data, and storage considerations. The privacy, security, and governance needs of your organization also influence this choice.

The CIA, or ***Confidentiality, Integrity, and Availability*** triad are three key components of an effective strategy for information security. The CIA triad is applicable to all facets of security, be it infrastructure, network, application, or data security.

-------------------------------------------------------------------

### Data Collection and Data Wrangling

Depending on where the data must be sourced from, there are a number of methods and tools available for gathering data. These include query languages for extracting data from databases, APIs, Web Scraping, Data Streams, RSS Feeds, and Data Exchanges. 

Once the data you need has been gathered and imported, your next step is to make it analytics-ready. This is where the process of Data Wrangling, or Data Munging, comes in. 

Data Wrangling involves a whole range of transformations and cleansing activities performed on the data. Transformation of raw data includes the tasks you undertake to: 

Structurally manipulate and combine data using Joins and Unions. 

Normalize data, that is, clean the database of unused and redundant data.

Denormalize data, that is, combine data from multiple tables into a single table so that it can be queried faster.

Cleansing activities include: 

* Profiling data to uncover anomalies and quality issues.

* Visualizing data using statistical methods in order to spot outliers. 

* Fixing issues such as missing values, duplicate data, irrelevant data, inconsistent formats, syntax errors, and outliers. 

A variety of software and tools are available for the data wrangling process. Some of the popularly used ones include Excel Power Query, Spreadsheets, OpenRefine, Google DataPrep, Watson Studio Refinery, Trifacta Wrangler, Python, and R, each with their own set of features, strengths, limitations, and applications.

-------------------------------------------------------------------------

### Querying Data, Performance Tuning, and Troubleshooting

In order for raw data to become analytics-ready, a number of transformation and cleansing tasks need to be performed on raw data. And that requires you to understand your dataset from multiple perspectives. One of the ways in which you can explore your dataset is to query it. 

Basic querying techniques can help you explore your data, such as, counting and aggregating a dataset, identifying extreme values, slicing data, sorting data, filtering patterns, and grouping data.

In a data engineering lifecycle, the performance of data pipelines, platforms, databases, applications, tools, queries, and scheduled jobs, need to be constantly monitored for performance and availability. 

The performance of a data pipeline can get impacted if the workload increases significantly, or there are application failures, or a scheduled job does not work as expected, or some of the tools in the pipeline run into compatibility issues. 

Databases are susceptible to outages, capacity overutilization, application slowdown, and conflicting activities and queries being executed simultaneously. 

Monitoring and alerting systems collect quantitative data in real time to give visibility into the performance of data pipelines, platforms, databases, applications, tools, queries, scheduled jobs, and more.

Time-based and condition-based maintenance schedules generate data that helps identify systems and procedures responsible for faults and low availability.

