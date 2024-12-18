brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
SHOW DATABASES;
USE cm_devices;
SHOW TABLES;
CREATE TABLE invoice(
    customerName VARCHAR(50) NOT NULL,
    orderDate DATE NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL NOT NULL
);
SHOW COLUMNS FROM invoice;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| customerName | varchar(50)   | NO   |     | NULL    |       |
| orderDate    | date          | NO   |     | NULL    |       |
| quantity     | int           | NO   |     | NULL    |       |
| price        | decimal(10,0) | NO   |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+