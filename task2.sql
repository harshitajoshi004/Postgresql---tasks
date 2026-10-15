UPDATE employees
SET deaprtment = 'operations'
 WHERE full_name = 'ravi sharma';

 -- task 17
 UPDATE employees
 SET email =@ aniktabarman
 WHERE full_name = 'ankita barman';

 UPDATE employees
 SET salary  = salary + 5000
 where  department = 'engineering';

 -- task 19
  DELETE FROM  products
  WHERE stock_quantity< 30;

  -- task 20
  ALTER TABLE employees
  DROP COLUMN is_active;

  -- TASK 21
  ALTER TABLE products
  DROP COLUMN category,
  DROP COLUMN added_on;

  -- task 22

  DROP TABLE orders;
   
   -- task 23

   CREATE DATABASE novatech_payroll_db;

   -- task 24
   CREATE TABLE staff(
    staff_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    designation TEXT,
    base_ salary NUMERIC CHECHK(salary> 15000),
   );
   -- task 24

   INSERT INTO staff(staff_id, full_name,email,)
   VALUES
   (1,'priyansh sharma', '@priyansh')
   (2,'harshu joshi','@harshu'),
   (3,'mohit sharma', ' @mohitsharma')

--task 25

INSERT INTO inventory_items(item_id,item_name,category)
VALUES
(1,'steel bolts','hardware','250'),
(2,'packing tape','supplies','45'),
(3,'safety helmets','equiments','36'),

-- task 26
SELECT full_name ,base_salary FROM employees,

-- task 27

UPDATE staff
SET designation = 'senior accontant',base_salary = 60000
WHERE full_name = 'priya Nair';

--task 28

UPDATE staff
SET department = NULL
WHERE full_name = 'anu kanwar';

-- task 29
DELETE FROM transictions
WHERE transiction_type = 'RETURN'AND amount  < 4000;

-- task 30
ALTER TABLE staff 
DROP COLUMN is_active;

-- task 31
SELECT full_name ,city,rating FROM drivers;
--task 32
DELETE FROM employees
WHERE full_name = 'ravi sharma';
--task 33
DELETE FROM employees
WHERE department = 'sales'
AND salary < 30000;



