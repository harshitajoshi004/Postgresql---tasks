--task 1
CREATE DATABASE novatech _db;
-- task 2
CREATE TABLE employees(
    emp_id serial primary key,
    full_name TEXT,NOT NULL
    email TEXT UNIQUE,
    departemnt TEXT,
    salary NUMERIC CHECK(salary > 0),
    date_of_joining DATE,
    is_active BOOLEAN DEFAULT TRUE
);
    --task 3


CREATE TABLE produts(
    product_id INTIGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price NUMERIC CHECK(price > 0),
    stock_quantity INTEGER DEFAULT 0,
    added_on DATE DEFAULT CURRENT_DATE,
);

--TASK 4


CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
     emp_name TEXT NOT NULL,
     quantity INTEGER CHECK (quantity > 1),
     order_date  TIMESTAMP,
     stautus TEXT DEFAULT 'Pending'
);

-- TASK 5
INSERT INTO employees(emp_id, full_name, department)
(1, 'anu kanwar', 'sales'),
(2,'umang joshi','IT'),
(3,'mohit sharma','AI'),
(4 , 'harshu joshi','CS'),

-- TASK 6

INSERT INTO products(product_id,product_name, category, price)
(1,'mouse','electronics','799','150' ),
(2 , ' office chair','549','40'),
(3 , 'notebook pack','199','500'),

--task 7

INSERT INTO orders(order_id,product_name,stautus ),
(1,'led monitor','ravi sharma','status'),
(2,'desk lamp','karan mehta','status'),

--task 8

SELECT full_name FROM employees,
-- task 9

SELECT full_name,department,salary FROM employees,

-- task 10

SELECT * from products;
-- task 11

SELECT * FROM employees
where department = 'engineering';
 
 --task 12
 SELECT * FROM employees WHERE  ( salary > 50000);

 -- task 13
 SELECT * FROM produts WHERE stock_quantity <= 40; 

 -- task 14
 SELECT * FROM employees 
 WHERE department = 'engineerimg'  AND (salary > 65000),

 -- TASK 16
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
SELECT full_name ,city,rating FROM drivers,

















