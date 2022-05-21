CREATE OR REPLACE TABLE
  `sql-by-creaitive-studio`.mistic_db.users
AS
  SELECT *
  FROM
    `sql-by-creaitive-studio`.mistic_db_raw.users
;

CREATE OR REPLACE TABLE
  `sql-by-creaitive-studio`.mistic_db.orders
AS
  SELECT *
  FROM
    `sql-by-creaitive-studio`.mistic_db_raw.orders
;

CREATE OR REPLACE TABLE
  `sql-by-creaitive-studio`.mistic_db.order_details
AS
  SELECT *
  FROM
    `sql-by-creaitive-studio`.mistic_db_raw.order_details
;

CREATE OR REPLACE TABLE
  `sql-by-creaitive-studio`.mistic_db.payments
AS
  SELECT *
  FROM
    `sql-by-creaitive-studio`.mistic_db_raw.payments
;
