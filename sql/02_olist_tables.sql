DROP TABLE IF EXISTS customers, orders, sellers;

CREATE TABLE customers (
  customer_id TEXT PRIMARY KEY, customer_unique_id TEXT,
  customer_zip_code_prefix TEXT, customer_city TEXT, customer_state TEXT);

CREATE TABLE orders (
  order_id TEXT PRIMARY KEY, customer_id TEXT, order_status TEXT,
  order_purchase_timestamp TIMESTAMP, order_approved_at TIMESTAMP,
  order_delivered_carrier_date TIMESTAMP, order_delivered_customer_date TIMESTAMP,
  order_estimated_delivery_date TIMESTAMP);

CREATE TABLE sellers (
  seller_id TEXT PRIMARY KEY, seller_zip_code_prefix TEXT,
  seller_city TEXT, seller_state TEXT);

\copy customers FROM '/tmp/customers.csv' WITH CSV HEADER
\copy orders FROM '/tmp/orders.csv' WITH CSV HEADER
\copy sellers FROM '/tmp/sellers.csv' WITH CSV HEADER
