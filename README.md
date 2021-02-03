# Data_604
Data Management

## Class 2 Intro:
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
