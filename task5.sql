--task1

UPDATE sales_reps
SET commision_rate = 0.11,
target _amount = 680000
WHERE full_name ='anu kanwar';

--task 2
UPDATE sales_reps
SET commision_rate = commision_rate + 0.01
WHERE region = 'north' OR rigion = 'east';

--task 3
UPDATE sales_reps
SET commision_rate = 0.15
WHERE years_experience >= 5 AND is_active  = true ;


-- task 4
UPDATE monthly_sales
SET SALE_STATUS  = 'confirmed'
WHERE sale_status = 'pending';

--task 5
CREARE DATABASE novatech_warehouse_db;

--task 6
CREATE TABLE warehouse_staff(
    staff_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    shift TEXT NOT NULL,
    years_experince INTEGER DEFAULT 0,
    hire_data DATE,
    is_supervisor BOOLEAN DEFAULT FALSE
);

    --task 7

    CREATE TABLE eqipment(
        eqipment_id INTEGER PRIMARY KEY,
        eqipment_name TEXT NOT NULL,
        eqipment_type TEXT NOT NULL,
        purchase_cost NUMERIC(12,2) CHECK(purchase_cost > 0),
        usage_hours INTEGER DEFAULT 0,
        maintenance_due BOOLEAN DEFAULT FALSE
    );

        --task 8
        CREATE TABLE shift_logs(
            log_id INTEGER PRIMARY KEY,
            staff_name TEXT NOT NULL,
            eqipment_name TEXT NOT NULL,
            shift_type TEXT NOT NULL,
            units_handled INTEGER CHECK(Units_handled > 0),
            log_date DATE NOT NULL
        );

        --task 9
        SELECT full_name,hourly_rate * 8 AS daily_pay
        FROM staff;


        --task 10
        SELECT full_name,hourly_rate * 8 *26 AS  monthly_pay
        FROM staff;
