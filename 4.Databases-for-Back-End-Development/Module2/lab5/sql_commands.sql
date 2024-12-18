brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
SHOW DATABASES;
CREATE DATABASE football_club;
USE football_club;
CREATE TABLE players_data(
    id INT,
    name VARCHAR(30),
    age TINYINT
);
SHOW COLUMNS FROM players_data;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | tinyint     | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
CREATE TABLE games(
    gameID INT,
    scoreOurs INT,
    scoreOpponent INT,
    matchDate DATE
);
SHOW COLUMNS FROM games;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| gameID        | int  | YES  |     | NULL    |       |
| scoreOurs     | int  | YES  |     | NULL    |       |
| scoreOpponent | int  | YES  |     | NULL    |       |
| matchDate     | date | YES  |     | NULL    |       |
+---------------+------+------+-----+---------+-------+