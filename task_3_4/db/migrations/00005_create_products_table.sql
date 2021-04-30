-- +goose Up
CREATE TABLE products
(
    id SERIAL PRIMARY KEY,
    name CHARACTER VARYING(100) NOT NULL,
    product_category_id INTEGER REFERENCES product_categories (id) NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price MONEY NOT NULL
);

INSERT INTO products(name, product_category_id, quantity, unit_price) VALUES
    ('Kingston DDR4-1600 8 Gb', 3, 15, 67),
    ('Samsung Galaxy Buds', 1, 8, 120),
    ('Samsung Electronics EVO Select 256GB MicroSDXC', 1, 26, 30),
    ('Windows 10 Pro Upgrade', 5, 40, 100),
    ('Kraus KAG-2MB Dishwasher Air Gap', 2, 31, 25);

-- +goose Down
DROP TABLE products;