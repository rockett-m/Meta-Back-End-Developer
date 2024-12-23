mysql;
CREATE DATABASE Chinook;
USE Chinook;
SHOW TABLES; -- optional
-- Empty set (0.00 sec)
-- create table Customer and add col names and data types and constraints
CREATE TABLE Customer ( CustomerId INT NOT NULL, FirstName VARCHAR(40) NOT NULL, LastName VARCHAR(20) NOT NULL, Company VARCHAR(80), Address VARCHAR(70), City VARCHAR(40), State VARCHAR(40), Country VARCHAR(40), PostalCode VARCHAR(10), Phone VARCHAR(24), Fax VARCHAR(24), Email VARCHAR(60) NOT NULL, SupportRepId INT, CONSTRAINT PK_Customer PRIMARY KEY  (CustomerId) );

SHOW COLUMNS FROM Customer; -- optional
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| CustomerId   | int         | NO   | PRI | NULL    |       |
| FirstName    | varchar(40) | NO   |     | NULL    |       |
| LastName     | varchar(20) | NO   |     | NULL    |       |
| Company      | varchar(80) | YES  |     | NULL    |       |
| Address      | varchar(70) | YES  |     | NULL    |       |
| City         | varchar(40) | YES  |     | NULL    |       |
| State        | varchar(40) | YES  |     | NULL    |       |
| Country      | varchar(40) | YES  |     | NULL    |       |
| PostalCode   | varchar(10) | YES  |     | NULL    |       |
| Phone        | varchar(24) | YES  |     | NULL    |       |
| Fax          | varchar(24) | YES  |     | NULL    |       |
| Email        | varchar(60) | NO   |     | NULL    |       |
| SupportRepId | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

-- populate Customer table
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (1, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (2, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES
(3, 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES
(4, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', 3);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (5, 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (6, 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', 3);

SELECT * FROM Customer; -- optional
+------------+-----------+------------+---------------------------------------------------+---------------------------------+-----------------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+
| CustomerId | FirstName | LastName   | Company                                           | Address                         | City                  | State | Country | PostalCode | Phone              | Fax                | Email                         | SupportRepId |
+------------+-----------+------------+---------------------------------------------------+---------------------------------+-----------------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+
|          1 | Luís      | Gonçalves  | Embraer - Empresa Brasileira de Aeronáutica S.A.  | Av. Brigadeiro Faria Lima, 2170 | São José dos Campos   | SP    | Brazil  | 12227-000  | +55 (12) 3923-5555 | +55 (12) 3923-5566 | luisg@embraer.com.br          |            3 |
|          2 | Eduardo   | Martins    | Woodstock Discos                                  | Rua Dr. Falcão Filho, 155       | São Paulo             | SP    | Brazil  | 01007-010  | +55 (11) 3033-5446 | +55 (11) 3033-4564 | eduardo@woodstock.com.br      |            4 |
|          3 | Alexandre | Rocha      | Banco do Brasil S.A.                              | Av. Paulista, 2022              | São Paulo             | SP    | Brazil  | 01310-200  | +55 (11) 3055-3278 | +55 (11) 3055-8131 | alero@uol.com.br              |            5 |
|          4 | Roberto   | Almeida    | Riotur                                            | Praça Pio X, 119                | Rio de Janeiro        | RJ    | Brazil  | 20040-020  | +55 (21) 2271-7000 | +55 (21) 2271-7070 | roberto.almeida@riotur.gov.br |            3 |
|          5 | Mark      | Philips    | Telus                                             | 8210 111 ST NW                  | Edmonton              | AB    | Canada  | T6G 2C7    | +1 (780) 434-4554  | +1 (780) 434-5565  | mphilips12@shaw.ca            |            5 |
|          6 | Jennifer  | Peterson   | Rogers Canada                                     | 700 W Pender Street             | Vancouver             | BC    | Canada  | V6C 1G8    | +1 (604) 688-2255  | +1 (604) 688-8756  | jenniferp@rogers.ca           |            3 |
+------------+-----------+------------+---------------------------------------------------+---------------------------------+-----------------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+

-- Write a SQL statement to display CustomerID, FirstName, LastName, City, State and Country from Customers table.
SELECT CustomerID, FirstName, LastName, City, State, Country FROM Customer;
+------------+-----------+------------+-----------------------+-------+---------+
| CustomerID | FirstName | LastName   | City                  | State | Country |
+------------+-----------+------------+-----------------------+-------+---------+
|          1 | Luís      | Gonçalves  | São José dos Campos   | SP    | Brazil  |
|          2 | Eduardo   | Martins    | São Paulo             | SP    | Brazil  |
|          3 | Alexandre | Rocha      | São Paulo             | SP    | Brazil  |
|          4 | Roberto   | Almeida    | Rio de Janeiro        | RJ    | Brazil  |
|          5 | Mark      | Philips    | Edmonton              | AB    | Canada  |
|          6 | Jennifer  | Peterson   | Vancouver             | BC    | Canada  |
+------------+-----------+------------+-----------------------+-------+---------+

-- Write a SQL statement to sort the result set in the ascending order by first name.
-- sort by FirstName ascending order (ASC optional keyword)
SELECT CustomerID, FirstName, LastName, City, State, Country
FROM Customer
ORDER BY FirstName ASC;
+------------+-----------+------------+-----------------------+-------+---------+
| CustomerID | FirstName | LastName   | City                  | State | Country |
+------------+-----------+------------+-----------------------+-------+---------+
|          3 | Alexandre | Rocha      | São Paulo             | SP    | Brazil  |
|          2 | Eduardo   | Martins    | São Paulo             | SP    | Brazil  |
|          6 | Jennifer  | Peterson   | Vancouver             | BC    | Canada  |
|          1 | Luís      | Gonçalves  | São José dos Campos   | SP    | Brazil  |
|          5 | Mark      | Philips    | Edmonton              | AB    | Canada  |
|          4 | Roberto   | Almeida    | Rio de Janeiro        | RJ    | Brazil  |
+------------+-----------+------------+-----------------------+-------+---------+

-- Filter the result set data based on a condition where country = Brazil
-- note that WHERE clause has to come before ORDER BY
SELECT CustomerID, FirstName, LastName, City, State, Country
FROM Customer
WHERE Country = 'Brazil'
ORDER BY FirstName ASC;
+------------+-----------+------------+-----------------------+-------+---------+
| CustomerID | FirstName | LastName   | City                  | State | Country |
+------------+-----------+------------+-----------------------+-------+---------+
|          3 | Alexandre | Rocha      | São Paulo             | SP    | Brazil  |
|          2 | Eduardo   | Martins    | São Paulo             | SP    | Brazil  |
|          1 | Luís      | Gonçalves  | São José dos Campos   | SP    | Brazil  |
|          4 | Roberto   | Almeida    | Rio de Janeiro        | RJ    | Brazil  |
+------------+-----------+------------+-----------------------+-------+---------+


-- You are required to write a SQL statement to display only the name and the country for customers from Canada.
-- optional ORDER BY FirstName
SELECT FirstName, Country
FROM Customer
WHERE Country = 'Canada'
ORDER BY FirstName;
+-----------+---------+
| FirstName | Country |
+-----------+---------+
| Mark      | Canada  |
| Jennifer  | Canada  |
+-----------+---------+