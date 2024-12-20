-- relationships
    -- 1 to 1
    -- 1 to many
    -- many to many

-- many uses crows feet connection
    --         /
    --    --------
    --         \

-- domain
-- is the optional of values a col cell can have
-- think 'yes', 'no', NULL

-- degree
-- is the # cols or attrs within a relation
-- table that stores name, addr, phone num, email means degree of four

-- cardinality
-- num records in a table (num rows)

-- constraints (3 types)

-- key
    -- can't be NULL, must be unique

-- domain
    -- valid data type, within domain allowed vals

-- referential integrity
    -- fkey must connect to pkey of other table, col name has to exist

-- one to many (1:N)
-- (table a) prof can have a lot of (table b) students, teach a lot of classes
-- (table b) students, teach a lot of classes (table a) can have one prof

-- N:N many to many
-- many customers can purchase many products and vice versa


-- candidate key (unique vals for each cell in col)
-- id and student email uniq; first name unlikely to be
    -- emails are generated for a school to not have collisions

-- parent table (pkey that is being referenced)
-- child table (fkey referencing pkey of parent table)

-- 1:N
-- customer can have a lot of orders
-- order can have 1 customer (amazon)


CREATE TABLE vehicle(vehicleID VARCHAR(10), ownerID VARCHAR(10), plateNumber VARCHAR(10), phoneNumber INT, PRIMARY KEY (vehicleID));t

SHOW COLUMNS FROM vehicle;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| vehicleID   | varchar(10) | NO   | PRI | NULL    |       |
| ownerID     | varchar(10) | YES  |     | NULL    |       |
| plateNumber | varchar(10) | YES  |     | NULL    |       |
| phoneNumber | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

-- attributes
--     single value
--     multi value (two emails in a cell) - avoid in relational db


-- Entity Relationship Diagram (ERD)
--     +--------+
--     | entity |
--     +------- +
--     | attr1  |
--     | attr2  |
--     | attr3  |
--     +--------+

--     connect boxes (entity + its attrs) with lines
--     crows foot for many connection