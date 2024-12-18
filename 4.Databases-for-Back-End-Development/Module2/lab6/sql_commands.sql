brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
SHOW DATABASES;

SHOW COLUMNS FROM customers;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| customerID      | int          | NO   |     | NULL    |       |
| customerName    | varchar(50)  | NO   |     | NULL    |       |
| customerAddress | varchar(100) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
INSERT INTO `customers` (`customerID`, `customerName`, `customerAddress`) VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');
SELECT * FROM customers;
+------------+--------------+----------------------------+
| customerID | customerName | customerAddress            |
+------------+--------------+----------------------------+
|          1 | Jack         | 115 Old street Belfast     |
|          2 | James        | 24 Carlson Rd London       |
|          4 | Maria        | 5 Fredrik Rd, Bedford      |
|          5 | Jade         | 10 Copland Ave Portsmouth  |
|          6 | Yasmine      | 15 Fredrik Rd, Bedford     |
|          3 | Jimmy        | 110 Copland Ave Portsmouth |
+------------+--------------+----------------------------+
-- delete Jimmy (could do WHERE id = 3)
DELETE FROM customers
WHERE customerName = 'Jimmy';

-- delete Yasmine (could do WHERE id = 6)
DELETE FROM customers WHERE customerName = 'Yasmine';
SELECT * FROM customers;
+------------+--------------+----------------------------+
| customerID | customerName | customerAddress            |
+------------+--------------+----------------------------+
|          1 | Jack         | 115 Old street Belfast     |
|          2 | James        | 24 Carlson Rd London       |
|          4 | Maria        | 5 Fredrik Rd, Bedford      |
|          5 | Jade         | 10 Copland Ave Portsmouth  |
+------------+--------------+----------------------------+