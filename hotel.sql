
CREATE DATABASE IF NOT EXISTS hotel_db;
USE hotel_db;
drop table hotel_info;
CREATE TABLE IF NOT EXISTS hotel_info (
    id INT PRIMARY KEY,
    hotel_name VARCHAR(50),
    hotel_location VARCHAR(30),
    phone_number BIGINT,
    noOfRooms INT
);

-- Insert sample data only if the table is empty
INSERT INTO hotel_info
(id, hotel_name, hotel_location, phone_number, noOfRooms)
VALUES
    (1, 'Barani Hotel', 'Davanagere', 760291885, 10),
    (2, 'Taj Hotel', 'Bengaluru', 9876543210, 25),
    (3, 'Green Palace', 'Mysuru', 8765432109, 15);

-- Disable automatic commits for this practice
SET autocommit = 1;

START TRANSACTION;

-- First update
UPDATE hotel_info
SET noOfRooms = 20
WHERE id = 1;

-- Create checkpoint
SAVEPOINT sp1;

select * from hotel_info;
-- Second update
UPDATE hotel_info
SET noOfRooms = 30
WHERE id = 1;

savepoint sp2;
select * from hotel_info;
-- Undo only the second update
ROLLBACK TO SAVEPOINT sp2;

-- Check the result: noOfRooms should be 20
SELECT * FROM hotel_info WHERE id = 1;

-- Save the remaining change
COMMIT;

-- Check the final result
SELECT * FROM hotel_info;
