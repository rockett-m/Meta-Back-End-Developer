brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cm_devices         |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
USE cm_devices;
SHOW TABLES;
+----------------------+
| Tables_in_cm_devices |
+----------------------+
| Address              |
| customers            |
| devices              |
| feedback             |
| stock                |
+----------------------+
CREATE TABLE address(
    id INT NOT NULL,
    street VARCHAR(50) NOT NULL,
    postcode VARCHAR(10) DEFAULT 'HA3 0AE',
    town VARCHAR(30) DEFAULT 'Harrow'
);
SHOW COLUMNS FROM address;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | NO   |     | NULL    |       |
| street   | varchar(50) | NO   |     | NULL    |       |
| postcode | varchar(10) | YES  |     | HA3 0AE |       |
| town     | varchar(30) | YES  |     | Harrow  |       |
+----------+-------------+------+-----+---------+-------+