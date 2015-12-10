# 8.4 Introduction to Database Schemas and SQL

## Release 5 SQL Query Commands

   1. select * from states;

   2. select * from regions;

   3. select state_name, population from states;

   4. select state_name, population from states order by population desc;

   5. select state_name from states where region_id=7;

   6. select state_name, population_density from regions where population_density > 50 order by population_density asc;

   7. select state_name from states where population between 1000000 and 1500000;

   8. select state_name, region_id from states order by region_id asc;

   9. select region_name from regions where region_name like "%Central%";

   10. select region_name, state_name from regions inner join states on states.region_id === region.id;

## Release 6: Your Own Schema

   This is the schema ![image](/week-8/database-intro/schema.png) I make. Please check it out. 
   Thanks.

## Release 7 Reflection

- What are databases for?

   Answer: the database is for storing the data and you can add, update, delete, extract data from there. It is an electronic filing system. Traditional databases are organized by fields, records, and files. A field is a single piece of information; a record is one complete set of fields; and a file is a collection of records. 

- What is a one-to-many relationship?

   Answer: One-to-many relationship is that one field of data will relate to many other field in the tables.

- What is a primary key? What is a foreign key? How can you determine which is which?

   Answer: Primary key is the unique identity for the table of data and you can only have one unique table in the database by using this primary key tracked in the database when extracting data. 
   Foreign key is the key that is used to refer to other table where the primary key is equal to the foreign key in this table. Usually, one table has only one ID field that should be primary key, while if there are several ID fields in one table, the first field usually is primary key and others are foreign keys referring to other fields in other tables.

- How can you select information out of a SQL database? What are some general guidelines for that?

   Answer: I am using the select * from table_name. Here * means everything in this table, which is a wild-card sign. You can also use select column_name1(, column_name2, ...) from table_name to extract more specific information in the table. Other than these, we can also use some condition syntax like select column_name from table_name (where field_name's condition). Inside the parentheses, you put the where keyword and plus the condition you need to get rid of the information you don't want. 
