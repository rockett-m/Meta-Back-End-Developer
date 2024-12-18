-- lab1
brew services start mysql -- start server
mysql; -- launch
mysql -u root -p; -- login
SHOW DATABASES;
USE cm_devices;
SHOW TABLES;
CREATE TABLE customers( username CHAR(9), fullName VARCHAR(100), email VARCHAR(255));
SHOW TABLES;
SHOW COLUMNS FROM customers;


CREATE TABLE feedback( feedbackID CHAR(8), feedbackType VARCHAR(100), feedbackComment VARCHAR(500));
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
SHOW COLUMNS FROM feedback;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| feedbackID      | char(8)      | YES  |     | NULL    |       |
| feedbackType    | varchar(100) | YES  |     | NULL    |       |
| feedbackComment | varchar(500) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+


-- to delete (if you mess up)
DROP TABLE feedback;