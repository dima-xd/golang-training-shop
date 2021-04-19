-- +goose Up
CREATE TABLE orders
(
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers (id) NOT NULL,
    product_id INTEGER REFERENCES products (id) NOT NULL,
    employee_id INTEGER REFERENCES employees (id) NOT NULL,
    date DATE NOT NULL,
    price MONEY NOT NULL,
    delivered_status BOOLEAN NOT NULL
);

INSERT INTO orders(customer_id, product_id, employee_id, date, price, delivered_status) VALUES
    (3, 1, 2, '2021-04-02', 75.71, true),
    (5, 4, 1, '2021-04-03', 113, true),
    (3, 4, 4, '2021-04-03', 113, false),
    (1, 2, 3, '2021-04-04', 135.6, false),
    (2, 5, 1, '2021-04-06', 28.25, false);

-- +goose Down
DROP TABLE orders;