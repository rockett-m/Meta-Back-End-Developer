-- DB Normalization
--     optimizes the db design by creating a single purpose for each table

-- insert, update, delete anomalies

-- insert anom.
--     can add a new course but needs student to take the course, who needs student id

-- update anom.
--     updating record in a table col requires further updates in other cols
--     say college gets merged into another one - can change college name for one student but
--     should change for all students at the former college
--     -
--     or professor changes departments mid semester - would have to update all
--     students taking courses with to reflect new dept for the prof

-- delete anom.
--     deletion of one record leads to deletion of several more reqd data sets
--     cant only delete student name and id if there are more cols in that record like DoB, grade, etc.

-- separate 7 col table into 3: one with student, one with course info, one with prof/department info


The normalization process aims to minimize data duplications,
avoid errors during data modifications, and simplify data queries from the database

    First Normal Form (1NF)
        The data atomicity rule means you can only have one
        single instance value of the column attribute in any table cell.
        'one value per field'

    Second Normal Form (2NF)
        avoid partial dependency relationships between data
        in composite pkey tables, non-key attrs shouldn't depend on one part of the composite key

        all non-key attributes should be determined by
        using all parts of the composite key, not only one of them.

    Third Normal Form (3NF)
        input has to be in 2NF, and no transitive dep(s)
        any non-key attr in table a cannot be func depn on another non-key attr in same table
        such as city and postcode (you change one, you will have to update the other,
        but don't leave it to chance of the updater knowing the relationship)

        then link tables together with foreign keys


1NF
    identify repeating data and which cols it is under
    identify entities, then split up so 1 table per entity
    add fkeys (and extra cols as necessary) to link tables

2NF
    functional dependency (student id - name and DoB dependent on)
        id not depnt on name or DoB; name and DoB could have duplicates for diff student IDs
    partial dependency (table with composite primary key)
        prescription_name depnt on prescription_id and nothing else - avoid in same table
        make all non-key components dept on comp. of primary key
        so make new table of prescription_id as pkey, prescription_name dept on prescription_id
        non-pkey attr has full dep on pkey now
        commonly ends with more tables with same or less cols

3NF
    split up into single purpose tables, then see above