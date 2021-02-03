# Data_604
Data Management

# Class 1
Installed SQL Server 

# Class 2 Intro:
Optional Reading- EF Codd “A Relational Model of Large Shared Data Banks.”

Proposed a relational model. 

Everything begins with business rules. 
Business rules are statements that confine or constrain policies, etc. 
Are expressed in terms familiar to end users. 
Are automated through DBMS software. 

## Business Rules
Good business rule is:
Declarative, preceise, atomic, consistent, expressible, distinct, business-oriented.
Who/what/when/where/and why for organizations. 

This is the first step of the business process. Without a good understanding of the business rule, the result will be flawed. 

These processes are iterative, you do it, go back to it to verify how the process went. Sometimes, the business won't think through the requirements, and will require modification throughout the process. 

## A Good DATA NAME is 
related to business, not technical characteristics
meaningfull, self-documenting, unique, readable, composed of words from an approved list, repeateable, written in standard syntax. 

## Business Process Diagram
Business process - requirement collection and analysis - database requirements - conceptual design - conceptual data model - logical model - logical data model - physical design - internal data model. 

Terms should be precise, atomic, consistent, and expressible in natural language, distinct. 

## Relation
A relation is a named, two-dimension table of data. It consists of rows and columns. Spreadsheets can be tables. Each row needs to be unique, each column does as well. 

## Database Development Life Cycle
Planning- (requirements, conceptual modeling) , analysis (conceptual modeling, start ER design) , design (logical modeling, normalization, metadata), implementation (run database creation scripts, perform testing, validation testing, production), maintenance  (backup plan, index plan, performance monitoring, security) 

## Entity Relationship Model
Entity types: Collection of entities, which often corresponds to a table (instance = row, type = table)
Attributes are characteristics or properties of an entity (two fields in a table)
Relationships: Relationship instance is a LINK between entities. A relationship type is a category of relationship. 

## Well-Structured
Entities, relationships, and attributes should be defined properly to insure strong aspects of data management. 
Sometimes, anomalies can happen. If you modify in one place and not the other, you have to make sure that you are applying changes across all of the data that is available. However, if you design it well, you will not have duplicates. 
Secondly, deletions should be clear throughout the database.
Modification- changes should change throughout the database.

## For Example...
(read the diagram)
ex. Pine View Valley...
Salespeople, territories, assignments, etc.
Who manages what, how is it housed, etc. The diagram supports pine view valley's business functionality.
The data model itself can be drawn on a piece of paper, or you can use tools that create the entity relationship model, so that you can create the SQl script. 
Note: Lucidchart is only a data modeling tool.
There are other tools that can create and script as well. 

## ER Notation
There are two types of notations.
Chen Notation and Crow's Foot Notation.

Imagine a spreadsheet... 
Entity instances are rows. Individual fields are attributes. The attribute type are the names of the rows. 

## Sample E-R Diagram 2
Cardinality- 
---|-|- Mandatory one
----o-|- Optional 1

*Entity:*
Should be:
-An object that will have many instances in the database
-An object that will be composed of multiple attributes.
- An object that we are trying to model

Should not be:
- A user of the database system
- An output of the database system (e.g. a report)

An entity is a real-world object or a concept ('student', 'bank account')
What is the difference between these two?

The real world object is a concrete entity. 

