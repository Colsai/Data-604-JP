# Notes for DATA604 Final Exam:
6 essay questions, 300 words each

## Questions
- Star Schema: 
- Snowflake Schema: 

What is ETL? (Extract Transform Load)
A 3-step process where data is prepped for loading into the data warehouse. 
- Extract: Data is taken from the source systems, either full or incremental in nature. 
- Transform: Data is transformed to fit the data warehouse schema, it is also cleaned up and improved. Four stages as formatting, cleansing, aggregation, and merging, enrichment. Cleansing is improvement. 
- Load: Data is loaded by the fact and dimension tables, and generates keys. 
Documentation is important so that this process moves cleanly. 
Time-wise, the ETL process is considered to take up a majority of the time in establishing a data warehouse.

Staging area: A place to prepare data. 

Alternatively, an ELT model is used in cases whre transformations occur within the data warehouse. 

Where does Data Virtualization fit in terms of big data? Data vir
SAAS: Software as a service, full applications are in the cloud
Platform as a service: Computing platform elements are hosted in the cloud, that integrate with applications
Infrastructure as a Service: Hardware infrastructure offering virtual machines in the cloud (cloud-hosted storage hardware)
DAAS: Data services are hosted in the cloud.

(PDM Ch. 17 Ch. 18 590-601, 617-620) 
### 1. Concepts with respect to how cloud computing works
- How does cloud computing work, how is it different from on-premise data centers  
- Why do people choose one over the other?

### 2. Hadoop Frameworks:
- What are the different components of Hadoop, and how do they work together
HDFS: Hadoop distributed file system, the files in the big data database. 
YARN: Yet Another Resource Navigator 
MapReduce: A programming model that allows for queries to be run quickly based on an efficient use of map-reduce function
which is distributed over many servers. 

- (What is used for transformation: Hive; SQL: Impala)

### 3. What is Spark, what is MapReduce, and how does it work with respect to the Map Frameworks.
MapReduce is a programming model that breaks down data so that it can be manipulated by different nodes in the network.
Spark is a replacement framework that allows for additional processing of data. It is being used as a replacement for MapReduce. 

### 4. What is massively parallel processing? (MPP)
SMP - symmetric multi processing. How can we process faster?
Many computers are combined for massively parallel processing. 
Each computer has its own OS and memory. They all make use of one file system.
Processing nodes have their own resources.
MPP is a distribution of workload- any distributed processing, where workload is split. 
Distribution and Processing are distributed to the nodes. 
MPP is the process that big data is using, such as HADOOP, etc.
Examples: Snowflake, etc.

### 5. Distributed Computing:
How does SPARK framework work, how does it relate to the Big Data environment. 

### 6. Visualizations
No questions on Tableau, but questions about data visualization

### 7. Distributed - Virtualization
How do virtual machines work, how can you carve out a physical machine into multiple machines

- "What is virtualization?
Virtualization uses software to create an abstraction layer over computer hardware that allows the hardware elements of a single computer—processors, memory, storage and more—to be divided into multiple virtual computers, commonly called virtual machines (VMs). Each VM runs its own operating system (OS) and behaves like an independent computer, even though it is running on just a portion of the actual underlying computer hardware." (IBM)

### 8. Parallel Computing & GPU Computing
No questions on nVidia CUDA, etc. Must understand how they are different from previous iterations.

### More:
- What is the SQL landscape
SQL still has great applicability, as many relational databases still exist. Relational Databases . Additionally, SQL-like languages are able to be used with. 
- OLAP: Online Analytical Processing: Type of software tools for data analysis, mainly used offline. Used for data analysts for reporting purposes. It is for decision-making.
Examples: Used in finance, budget, etc. Analysis and forecasting, etc. They provide managers with the data to make effective decisions. Recommendation systems, checking account balances, shopping accounts, booking tickets. ATM money withdrawals. Comparatively short transactions.

- OLTP: Online Transactional Processing: A system that manages transaction-oriented processing. Database 

Motive: OLAP - historical data, complex queries like aggregation, simple commands, analysts, etc. DENORMALIZED. A very large space of data. Rarely needed backups. Design changes for reporting subject, snowflake model.
Motice: OLTP - manages day to day operations, simple and standard qeries, insert/delete etc., clerks, cashiers etc. NORMALIZED. smaller spaces. Regular backups. ER model.

Advantages of OLAP: Single platform, forecasting, security restrictions
Disadvantages: SLOW, ABSTRACT, a lot of cooperation necessary for better reports

Advantages of OLTP: Day to day, so simpler queries, quicker, indexed access, large numbers, faster, 
Disadvantages: Mistakes can ruin data, multiple users can mess up data, costly for concurrency, processing costs on buyer and seller

### Data Warehousing: 
What is used for decision-making
What is used for operational decisions

All the Types of Databases:
What is a Value-Store Database:
What is a Graph Database:
What is a Column Database: 

- What is Cap Theorem https://en.wikipedia.org/wiki/CAP_theorem
- How are noSQL databases implemented:
- What types of workloads, what OLTP, OLAP, Data Warehousing, what is used for decision-making and machine learning, etc.
- What is a value-store database, what is a graph database, etc.

## Also on MongoDB:
Notes on Exercise:
- No hands-on kind of work, only the conceptual aspects of each of these frameworks. 
- (Won't be "What is X, how does it work?")
