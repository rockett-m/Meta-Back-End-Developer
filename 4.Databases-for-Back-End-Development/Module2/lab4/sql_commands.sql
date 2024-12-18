brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
SHOW DATABASES;
CREATE DATABASE bookshop;
SHOW DATABASES;
USE bookshop;
CREATE TABLE customers(
    customerID INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL
);
SHOW TABLES;
SHOW COLUMNS FROM customers;

INSERT INTO customers(customerID, name, address)
VALUES(1, 'Alice', '1 Space Dr.');
SELECT * FROM customers;
+------------+-------+-------------+
| customerID | name  | address     |
+------------+-------+-------------+
|          1 | Alice | 1 Space Dr. |
+------------+-------+-------------+
INSERT INTO customers(customerID, name, address)
VALUES
(2, 'James', '24 Carlson Road, London'),
(3, 'Jack', '115 Old Street Belfast')
;
SELECT * FROM customers;
+------------+-------+-------------------------+
| customerID | name  | address                 |
+------------+-------+-------------------------+
|          1 | Alice | 1 Space Dr.             |
|          2 | James | 24 Carlson Road, London |
|          3 | Jack  | 115 Old Street Belfast  |
+------------+-------+-------------------------+