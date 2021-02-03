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
The real world object is a concrete entity. A player, an account-holder are real-world entities.

Entity type represents a business concept with an unambiguoys meaning to a particular set of users. Entity is one particular occurence or isntance of an entity type.
A strong entity type is an entity type that has a key attribute type.
A weak entity type is an entity type that does not have a key attribute of its own .
*For example, related to owner entity type from which it borrows an attribute type to make up a key attribute type.*
An abstract entity is an entity that exists only abstractly, such as department, team, or account. 

Entities: Strong, Weak, Associative
Attributes: Identifier, Partial Identifier

## Example of strong and weak entity type
DOUBLE LINE IS WEAK ENTITY (ON ITS OWN, CANNOT DEFINE MUCH)
SINGLE LINE IS A DOUBLE ENTITY
---
Strong entity can exist outside of other entity types.
- A Hotel is a strong entity. 
- Hotel Room is a weak entity. 
- A Room Number is a PARTIAL identifier. 

*Medications could be weak entities, disease could be strong disease type. BUT everything really depends on the business case. You build your model to the business rule. The business requirement is very important because that is how you build your model*

What is the identifying relationship?
This is what links strong entities to weak entities (belongs to...) >---|-|-
Each hotel can have multiple rooms. 1:N.

## Dependents
The identifying relationship between the employee and...

## Relationship Attribute Types
Relationship type can also have attribute types.
These attribute types can be migrated to one of the participating entity types in case of 1:1 or 1:N relationship type. 

##
Employee has "works on" as the relationship. 

## Attributes
Attribute type represents a property of an entity type.
Example: Name and Addres are attribute types of the entity type supplier
Attribute is an instance of an attribute type

## Attribute types
Key attribute types
Simple versus Composite Attribute Types
Single-Valued versus multi-valued attribute types
Derived attribute type
Required Versus Optional Attribute Type 
(SSN should be an optional)

## Key Attribute Types
'Identifier' or 'Primary Key' is an attribute that uniquely identifies individual instances of an entity type. 
Uniquely identify individual instances of an entity type: SSN, product number, supplier number
Two keys in one = composite key 
Simple key is just ONE THING "supplier status"
A Composite attribute type is an attribute type that can be decomposed into other meaningful attribute types. 
Simple attribute has nothing in parenthesis (no division of the attribute type)
Age is a DERIVED attribute from date of birth (you can get the age from date of birth)

## Identifiers (keys)

## Criteria for identifiers
Choose identifiers that will not change and are not null
Don't pick identifiers that can change/locations or people's names

## Cardinality
Cardinality Constraints- 
Minimum cardinality, 0 then optional
1+, mandatory

Basketball team can have 0-N number of players. 
Cardinality 
Mandatory one -||-
Optional one o-|-
Mandatory many |-<
optional many -o-<

Double line means = all X must be relationship Y

## Univary/Binary
One person can be married to another person or not.
1:1 relationship / one-or-no-other person. 
Maximum cardinality can be 1 or N.
Relationship types are often characterized by their maximum cardinalities.
1:1,1:N(many),N:1, many to one and M: N.

Modeling relationships: Relationship types and relationship instances. 

## Relationship Types
- Definition, degree, and roles
- Cardinalities
- Relationship Attribute Types
