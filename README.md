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

## Class 3:
student (studentnr, name, homephone, address)
professor (ssn, name, homephone, officephone, e-mail)
course (courseno, coursename)
A tuple is like a row (the actual data values within the tables)

We are looking to link attributes to different relations. 

## Formal definitions
- EER
- Entity type | relation
- Entity | tuple

A relation essentially represents a set (no ordering + no duplicates!)

### Values should be atomic and single value
Course (coursenr, coursename, study points)
*10, principles of Database Management, 6*
Data should NOT have redundancies
Data should NOT have multiple values (basketball, soccer) is an example of NOT being atomic. 

### Columns should not have the same name (all should be unique)
**Order of rows and columns actually does not matter**

You can explictly state the order of rows and columns to sort through the data. 
A domain specific range is possible in a relational model. For example, you can create domain specific values, such as the name of a state as a list of admissable domain values, but your data design in the relational model must be atomic. 

### Types of Keys
- Super key: Make sure that each row has unique values (no ROW should be the same)
- Candidate keys: Has same properties as a primary key (if SSN AND Student number was included)
- Primary Keys: Unique identifiers of a relation to guarantee that each row is unique 
- Alternative Keys: Other keys that can be used but are not used as primary key
- Foreign Keys: Very important for relational model. 
Can be simple or composite (one field vs multiple fields that are combined)
For example, SSN vs. name + phone, etc.

### Foreign Keys in-depth.
To describe a relationship in an ERD, we could put the 1:1 relationship number INTO the multi table. Supplier.

### Some additional constraints that we can impose
Domain constraint: The value of each attribute type A must be atomic and have a single value
Key constraint: Every relation has a key that allows to uniquely identify tuples (ie it needs a primary key)
Entity integrity Constraint: The attribute types that make up the primary key should always satisfy a NOT NULL. IE the Primary Key CANNOT be null.
Referential integrity constraint: A foreign key FK has the same domain as the PK primary key, and it must be the same as in the parent table.

### Example- relational data model notation
Relation Name - (Primary Key: 1, Column 1, Column 2, Column 3)
Relation Name - 2 (Primary Key: 2, Column 1, Column 2, Foreign Key)
You should draw an arrow FROM the foreign key TO the primary key. 

OR, different cells representing columns and attributes of that relationship.
- Product (PRODNR, PRODNAME, PRODTYPE, AVAILABLE_QUANTITY)
- Supplies(SUPNR, PRODNR, Purchase_Price, Deliv_period)
- Supplier(SUPNR, SUPNAME, SUPADDRESS, SUPCITY, SUPSTATUS)
- Purchase_Order(PONR, PODATE, SUPNR)
- PO_Line(PONR, PRODNR, QUANTITY)

### Example 
Acronym PK and FK (Primary Key and Foreign Key)
Two underlined keys mean composite keys.
Note: A domain is where you have values that are allowable. For example, the product types can only be {red, blue, green} 

Note: You can skip the relational model, so long as it is normalized. Make sure to know which are multivalued attributes, etc. Doing the relational model first may be a good idea. The ER model is easier to relate to your users. Showing them a relational model can be confusing to others. 

### Normalization:
- Insertion, deletion, and update anomalies
- Informal Normalization guidelines
- Functional Dependencies and Prime Attribute Type
- Normalization Forms
- Controlled redundancies are OK. Uncontrolled redundancies are occurences where you might have inconsistency and need to make many changes.

### Let's look at the types of normal forms.


# Class 4
## Introduction
Key characteristics of SQL
- Free form/Case Insensitive
- Most-used environment.
- Can be used interactively OR executed by a program
## Does it have a standard?
- Mostly. However, there are some issues, and vendors have changed the language as well as added on.

### SQL Vocabulary
Catalog - A set of schemas that constitute the description of a database
Schema - The structure that contains descriptions of objects created by a user (base tables, views, constraints)
Data Definition Language (DDL) - Commands that define a database, including creating, altering, and dropping tables and establishing constraints.
Data Manipulation Language (DML)- Commands that maintain and query a database
Data Control Language (DCL) - Edit and modify data. 

Database management systems connect users to a front end, which connects to the DBMS through DBMS queries. The DBMS can look through different environments: One for production, and one for development. 
Production database contains its own data. It is the actual database being used. 
Development database also contains data. More freedom to create data. 
Some also have a test database, which takes the level of code propagated to production in a separate environment. Test environment has more production-like data. 

Usually there is a development team, test team, and production team. 
---
### SQL Datatypes:
- Strings: Character (n), Varying character (n)
- Binary: Binary Large Object 
...

### DDL/DML/DCL:
Define the database:
Create tables, indexes, views, establish foreign keys, drop and truncate tables (physical design)
DML: Load the database (insert, update, select)
DCL: Grant, add, revoke

### DDL Concepts:
SQL Schema: Grouping of tables and other database objects such as views, constraints, and indexes which logically belong together.

CREATE SCHEMA PURCHASE AUTHORIZATION 
BBAESENS

SQL table implements a relation from the relational model.
- CREATE TABLE PRODUCT ...
- CREATE TABLE PURCHASE.PRODUCT ... 

Select from where groupby having.

Find products with standard price less than $275.
Select productdescription, productstandardprice
from product_t
where productstandardprize < 275;

comparison operators include 
- = Equal to 

Alias is an alternative column or table name
select cust.customername as name, cust.customeraddress
from customer cust where name = 'Home Furnishings' 

AS NAME = alias (so it returns a result)

Aggregation: Count/Sum/Average.
Aggregate functions require groupby and select. 

--Example
Select productdescription, productfinish, productstandardprice
from product_t
where productdescription like '%Desk'
or productdescription like '%table'
and productstandardprice > 300
. You can use the wildcard %.... before or ....% for after in the comparison. 
if you want to just compare ONE character, than you can use underscore
'_name'

Parenthesis is super important- innermost is first. 

After that, there is the order by clause. 
Select customername, customercity, customerstate
from customer_t
where customerstate in ('FL', 'TX) 
order by customerstate, customername DESC/ASC;

### groupby 
for use with aggregate functions:
Scalar aggregate: Single value returned from SQL query with aggregate function
Vector aggregate: Multiple values returned from SQL query with aggregate function (via GROUP BY)

COUNT IS A SCALAR (SINGLE VALUE)

Select customerstate, count(customerstate)
from customer_T
groupby CustomerState; 

Select customerstate, count(customerstate)
from customer_T
group by customerstate
having count (customerstate) > 1; 

like a where clause, but it operates on groups (categories) not individual rows. Here, only those groups with total numbers greater than 1 will be included in the final result.

## 
Select productfinish, avg (productstandardprice)
from product_t
where productfinish in ('Cherry', 'Natural Ash', )
Group by ProductFinish
Having AVG (productstandardprice) < 750
Order by ProductFinish; 

Explanation: 
Select productfinish and average from the product_t table where
they have a finish of cherry or natural ash,
group them by productfinish where they have an average of at least 750 standard price,
then order them by product finish (for how much). 

Order by is for sorting (helps to sort the result rows)
Group by is for an aggregate function (what to group by)

Group by is MIDDLE
Order by is LAST

## More...
Select Thing
From Table
Where 
Group by
Having
Order by (Sort by)

Predicates (TSQL p.49)
Three valued logic expression (true, false, null)
Examples Where, Having, in, Between Like

Exists is a predicate that differs as is true or false (not NULL).
