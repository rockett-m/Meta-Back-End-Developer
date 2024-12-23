-- Schema - organize data and relationships

-- db schema is a collection of data structures within db - blueprint

-- SQL server - collection of individual but related components
-- postgre SQL - namespace with named db objects
-- Oracle - property of each respective db user

-- organization of data in the form of tables
-- relationships between the tables

-- management - logical groupings for objects
-- accessibility - greater access to objects
-- security - apply diff measures to each if need be
-- ownership - xfer of ownership btwn users


-- Conceptual or logical schema that defines entities, attributes and relationships.
-- + think table names and col, datatype and links between tables

-- Internal or physical schema that defines how data is stored in a secondary storage.
-- In other words, the actual storage of data and access paths.
-- + low-level how is the data stored

-- External or view schema that defines different user views.
-- + who can see what based on their user permissions

-- *good schemas prevent the need to reverse engineer the db later on*

CREATE DATABASE shopping_cart_db; USE shopping_cart_db;
-- first time using primary key
CREATE TABLE customer(
    customer_id INT,
    name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100),
    phone VARCHAR(10),
    PRIMARY KEY (customer_id)
);
SHOW COLUMNS FROM customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | YES  |     | NULL    |       |
| address     | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(100) | YES  |     | NULL    |       |
| phone       | varchar(10)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

-- max price is 99999999.99
CREATE TABLE product(
    product_id INT,
    name VARCHAR(100),
    price NUMERIC(8,2),
    description VARCHAR(255),
    PRIMARY KEY (product_id)
);
SHOW COLUMNS FROM product;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| product_id  | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | YES  |     | NULL    |       |
| price       | decimal(8,2) | YES  |     | NULL    |       |
| description | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

-- first time foreign key used
CREATE TABLE cart_order(
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    status VARCHAR(100),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
SHOW COLUMNS FROM cart_order;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| order_id    | int          | NO   | PRI | NULL    |       |
| customer_id | int          | YES  | MUL | NULL    |       |
| product_id  | int          | YES  | MUL | NULL    |       |
| quantity    | int          | YES  |     | NULL    |       |
| order_date  | date         | YES  |     | NULL    |       |
| status      | varchar(100) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+


-- foreign key
-- reference keyword to link tables

-- Entity Relationship Model
-- tables connected with line and labeled the action linking them
-- tables: Shipment, Order, Courier
-- Order <-"Ships"-> Shipment <-"Delivers"-> Courier

-- database schema consists of:
--     + all the important data pertaining to a given scenario and their relationships,
--     + unique keys for all entries and database objects,
--     + name and data type for each column in a table.


-- yellow = primary key
-- red = foreign key
-- arrows = foreign key connections

CREATE DATABASE restaurant; USE restaurant;

-- only create dependent tables after tables needed are created
CREATE TABLE tbl(
    table_id INT,
    location VARCHAR(255),
    PRIMARY KEY (table_id)
);
CREATE TABLE waiter(
    waiter_id INT,
    name VARCHAR(150),
    contact_no VARCHAR(10),
    shift VARCHAR(10),
    PRIMARY KEY (waiter_id)
);
CREATE TABLE table_order(
    order_id INT,
    date_time DATETIME,
    table_id INT,
    waiter_id INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (table_id) REFERENCES tbl(table_id),
    FOREIGN KEY (waiter_id) REFERENCES waiter(waiter_id)
);
CREATE TABLE customer(
    customer_id INT,
    name VARCHAR(100),
    NIC_no VARCHAR(12),
    contact_no VARCHAR(10),
    PRIMARY KEY (customer_id)
);
CREATE TABLE reservation(
    reservation_id INT,
    date_time DATETIME,
    no_of_pax INT,
    order_id INT,
    table_id INT,
    customer_id INT,
    PRIMARY KEY (reservation_ID),
    FOREIGN KEY (order_id) REFERENCES table_order(order_id),
    FOREIGN KEY (table_id) REFERENCES tbl(table_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE menu(
    menu_id INT,
    description VARCHAR(255),
    availability INT,
    PRIMARY KEY (menu_id)
);
CREATE TABLE menu_item(
    menu_item_id INT,
    description VARCHAR(255),
    price FLOAT,
    availability INT,
    menu_id INT,
    PRIMARY KEY (menu_item_id),
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
);
CREATE TABLE order_menu_item(
    order_id INT,
    menu_item_id INT,
    quantity INT,
    PRIMARY KEY (order_id, menu_item_id),
    FOREIGN KEY (order_id) REFERENCES table_order(order_id),
    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id)
);
SHOW TABLES;
+----------------------+
| Tables_in_restaurant |
+----------------------+
| customer             |
| menu                 |
| menu_item            |
| order_menu_item      |
| reservation          |
| table_order          |
| tbl                  |
| waiter               |
+----------------------+
SHOW COLUMNS FROM reservation;
+----------------+----------+------+-----+---------+-------+
| Field          | Type     | Null | Key | Default | Extra |
+----------------+----------+------+-----+---------+-------+
| reservation_id | int      | NO   | PRI | NULL    |       |
| date_time      | datetime | YES  |     | NULL    |       |
| no_of_pax      | int      | YES  |     | NULL    |       |
| order_id       | int      | YES  | MUL | NULL    |       |
| table_id       | int      | YES  | MUL | NULL    |       |
| customer_id    | int      | YES  | MUL | NULL    |       |
+----------------+----------+------+-----+---------+-------+
SHOW COLUMNS FROM table_order;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| order_id  | int      | NO   | PRI | NULL    |       |
| date_time | datetime | YES  |     | NULL    |       |
| table_id  | int      | YES  | MUL | NULL    |       |
| waiter_id | int      | YES  | MUL | NULL    |       |
+-----------+----------+------+-----+---------+-------+
SHOW COLUMNS FROM order_menu_item;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| order_id     | int  | NO   | PRI | NULL    |       |
| menu_item_id | int  | NO   | PRI | NULL    |       |
| quantity     | int  | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+

-- note the multi-field primary key in order_menu_item
