
DROP TABLE IF EXISTS raw.orders;

CREATE TABLE raw.orders (
  order_id        INT PRIMARY KEY,
  order_date      DATE NOT NULL,
  customer_name   TEXT NOT NULL,
  region          TEXT NOT NULL,
  city            TEXT NOT NULL,
  category        TEXT NOT NULL,
  sub_category    TEXT NOT NULL,
  product_name    TEXT NOT NULL,
  quantity        INT NOT NULL,
  unit_price      INT NOT NULL,
  discount        INT NOT NULL,
  sales           NUMERIC(12,2) NOT NULL,
  profit          NUMERIC(12,2) NOT NULL,
  payment_mode    TEXT NOT NULL
);

