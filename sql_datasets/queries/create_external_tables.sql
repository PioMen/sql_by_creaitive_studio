CREATE OR REPLACE EXTERNAL TABLE
  `sql-by-creaitive-studio`.mistic_db_raw.users
  (
    user_id STRING,
    first_name STRING,
    last_name STRING,
    is_active BOOL,
    status STRING,
    sex STRING,
    birthdate DATE,
    created_date DATE,
    newsletter_consent BOOL,
    email STRING,
    address STRING
  )
OPTIONS (
  format = 'GOOGLE_SHEETS',
  uris = ['https://docs.google.com/spreadsheets/d/1rq4JCcytVO6LQFZTp37Q_qm6gy4XZdXRLYpg5BwzS4Q'],
  sheet_range = 'users!A:K',
  skip_leading_rows = 1
);

CREATE OR REPLACE EXTERNAL TABLE
  `sql-by-creaitive-studio`.mistic_db_raw.orders
  (
    order_id NUMERIC,
    order_date DATE,
    payment_id STRING,
    amount_net NUMERIC,
    amount_tax NUMERIC,
    amount_gross NUMERIC,
    buyer_id STRING,
    seller_id STRING,
  )
OPTIONS (
  format = 'GOOGLE_SHEETS',
  uris = ['https://docs.google.com/spreadsheets/d/1rq4JCcytVO6LQFZTp37Q_qm6gy4XZdXRLYpg5BwzS4Q'],
  sheet_range = 'orders!A:I',
  skip_leading_rows = 1
);

CREATE OR REPLACE EXTERNAL TABLE
  `sql-by-creaitive-studio`.mistic_db_raw.order_details
  (
    order_id NUMERIC,
    position_num NUMERIC,
    product_id STRING,
    quantity NUMERIC,
    price_net NUMERIC,
    amount_tax NUMERIC,
    price_gross NUMERIC,
  )
OPTIONS (
  format = 'GOOGLE_SHEETS',
  uris = ['https://docs.google.com/spreadsheets/d/1rq4JCcytVO6LQFZTp37Q_qm6gy4XZdXRLYpg5BwzS4Q'],
  sheet_range = 'order_details!A:G',
  skip_leading_rows = 1
);

