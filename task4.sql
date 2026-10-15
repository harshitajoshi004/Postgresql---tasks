--task 1
CREATE DATABASE novatech_sales_db;
--task 2

CREATE TABLE sales_reps (
    rep_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT,
    region TEXT,
    years_experience NAGATIVE DEFAULT to 0,
    target_amount NUMERIC CHECK (target_amaunt > 0),
    is_active_true BOOLEAN default TRUE
);

--task 3

CREATE TABLE Products_catalog (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    cost_price NUMERIC CHECK (cost_price > 0),
    selling_price NUMERIC CHECK (selling_price > 0),
    units_in_stock INTEGER default 0 CHECK (units_in_stock > 0),
);

-- task 4
CREATE TABLE monthly_sale (
    sale_id INTEGER PRIMARY KEY,
    rep_name TEXT NOT NULL,
    product_name TEXT NOT NULL,
    region TEXT NOT NULL,
    units_sold NUMBER > 0,
    sale_amount NUMERIC CHCEK (sale_amount > 0),
    sale_month TEXT NOT NULL,
    sale_status TEXT NOT NULL DEFAULT 'pending'
);

--task 5

INSERT INTO
    sales_repo (
        sales_repo id,
        full_name,
        email,
        region,
        year_experience,
        target_amount,
        is_active
    )
VALUES(1,'anu kanwae', '@anukanwar', 'North', '6', '50000', 'true'  ),
    (2, 'harshu joshi', '@harshu01','East', '7', '35000', 'true' ),
    (3, 'umangjoshi', '@umangjoshi', 'south', '8','45000',  'true'  );

--task 6
CREATE TABLE quarterly_expenses (
    expense_id INTEGER PRIMARY KEY,
    department TEXT NOT NULL,
    expense_category TEXT NOT NULL,
    amount NUMERIC(12, 2) NOT NULL,
    expense_date DATE NOT NULL
);

--task 7

SELECT full_name AS rep_name
FROM sales_reps;

-- task 8
SELECT full_name AS rep_name,
region AS rep_region,
target_amount AS yearly_target

FROM sales_reps;

--task 9
SELECT full_name,
target amount * commission_rate AS expected_commission
FROM sales_reps;






