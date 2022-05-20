CREATE OR REPLACE EXTERNAL TABLE
  `sql-by-creaitive-studio`.mistic_db_raw.users
  (
    user_id string,
    status string,
    first_name string,
    last_name string,
    sex string,
    birthdate date,
    created_date date,
    newsletter_consent bool,
    email string
  )
OPTIONS (
  format = 'GOOGLE_SHEETS',
  uris = ['https://docs.google.com/spreadsheets/d/1rq4JCcytVO6LQFZTp37Q_qm6gy4XZdXRLYpg5BwzS4Q'],
  sheet_range = 'users!A:I',
  skip_leading_rows = 1
);

CREATE OR REPLACE EXTERNAL TABLE
  `sql-by-creaitive-studio`.mistic_db_raw.orders
  (
    order_id string,
    order_date date,
    payment_id string,
    amount_net numeric,
    amount_tax numeric,
    amount_gross numeric,
    buyer_id string,
    seller_id string,
  )
OPTIONS (
  format = 'GOOGLE_SHEETS',
  uris = ['https://docs.google.com/spreadsheets/d/1rq4JCcytVO6LQFZTp37Q_qm6gy4XZdXRLYpg5BwzS4Q'],
  sheet_range = 'orders!A:I',
  skip_leading_rows = 1
);

