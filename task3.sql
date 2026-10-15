--task 1
CREATE DATABASE novatech_logistics_db;
--task 2

CREATE TABLE drivers (
    drivers_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    city TEXT,
    rating NUMERIC CHECK (  rating > = 1 AND rating <= 5),
    monthly_salary NUMERIC,
    is_on_duty BOOLEAN
);

--- task 3

CREATE TABLE vehicles (
    vehicle_id INTEGER PRIMARY KEY,
    vehicle_number TEXT,
    last_service_date DATE
);

--TASK 5
INSERT INTO drivers (drivers_id, full_name, city)
VALUES
 (1, 'anu kanwar', 'jaipur'),
    (2, 'harshu joshi', 'delhi'),
    (3, 'mohit sharma', 'niwaru');

-- task 6
SELECT full_name, city, rating FROM drivers;

--task7
SELECT years_experience > 2 WHERE - city EITHER delhi OR mumbai;

--task 8
SELECT * FROM vehicles 
where NOT viechele_type = 'truck';
--task 9
UPDATE drivers
SET rating = 4.4, monthly_salary = 41000
WHERE full_name - 'suresh pilai';
--task 10

UPDATE drivers
SET monthly_salary = 2000
WHERE city IN ( 'delhi', 'lucknow');
--task 11
UPDATE records
SET city  = NULL
WHERE full_name - 'imran khan';

--task 12
DELETE FROM delivery
WHERE
    delivery_status - 'cancelled'
    AND delivery_charge > 5000;

-- task 13
ALTER TABLE drivers DROP COLUMN is_on_duty;

-- task 14
ALTER TABLE vehicle DROP last_service_date;

-- task 15
DELETE FROM delivers tables;

--task 16
INSERT INTO delivers (deliver_id, ful_name, city)
VALUES 
    (1, 'umang joshi', jaipur),
    (2, 'harshu joshi', jaipur),
    (3, 'priyansh shegal', jaipur);
