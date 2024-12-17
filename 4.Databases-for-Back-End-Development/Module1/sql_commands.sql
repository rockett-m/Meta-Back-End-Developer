
CREATE DATABASE college; -- db name
CREATE TABLE Student; -- table name

INSERT INTO Student -- populate table
(ID, first_name, last_name, date_of_birth) -- col headers
VALUES (val1, val2, val3, val4, val5); -- row vals

UPDATE Student -- table name
SET date_of_birth = '2000-10-12' -- col name, new val
WHERE ID = '02'; -- pkey identifier

DELETE FROM Student -- table name
WHERE ID = '03'; -- remove row 03

SELECT first_name, last_name -- cols of interest
FROM Student -- table name
WHERE ID = '01'; -- row id (pkey)

DDL Commands
-- create db with 3 cols
CREATE TABLE table_name (column_name1 datatype(size), column_name2 datatype(size), column_name3 datatype(size));
DROP TABLE table_name; -- delete table
ALTER TABLE table_name ADD (column_name datatype(size)); -- add col to table
ALTER TABLE table_name ADD primary key (column_name); -- add pkey to table

TRUNCATE TABLE table_name; -- remove records from a table (but keep table)
DQL Commands
SELECT * FROM table_name; -- retrieve all data from a table
DML Commands
-- insert data into 3 cols in a table
INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);
-- update data in two cols
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
DELETE FROM table_name WHERE condition; -- delete data from table in db
DCL Commands
GRANT / REVOKE -- (user permissions for db)

Transaction Control Language (TCL)
COMMIT -- save work done in db
ROLLBACK -- restore db to last committed state