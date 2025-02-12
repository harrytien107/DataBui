CREATE DATABASE YT1;
USE YT1;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT,
    order_total DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_customer
        -- FOREIGN KEY (customer_id) 
        REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, name, email)
VALUES (1, 'Tran Quoc Huy', 'huy@wecommit.com.vn');

INSERT INTO customers (customer_id, name, email)
VALUES (2, 'Tran Quoc Long', 'long@wecommit.com.vn');

INSERT INTO orders (order_id, order_date, customer_id, order_total)
VALUES (101, '2024-08-01', 1, 100);

INSERT INTO orders (order_id, order_date, customer_id, order_total)
VALUES (102, '2024-08-02', 1, 150);