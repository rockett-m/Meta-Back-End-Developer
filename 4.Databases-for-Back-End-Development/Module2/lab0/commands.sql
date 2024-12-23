-- lab0
brew install mysql -- install mysql
brew services start mysql -- start server
mysql -- launch
mysql -u root -p -- login
CREATE DATABASE cm_devices; -- make db 'cm_devices'
SHOW DATABASES;
USE cm_devices; -- select db 'cm_devices'
CREATE TABLE devices( deviceID int, deviceName varchar(50), price decimal); -- make table 'devices' with 3 cols in db 'cm_devices'
SHOW TABLES;
SHOW COLUMNS FROM devices; -- show what table 'devices' looks like
CREATE TABLE stock( deviceID int, quantity int, totalCost decimal); -- create another table
SHOW COLUMNS FROM stock;
