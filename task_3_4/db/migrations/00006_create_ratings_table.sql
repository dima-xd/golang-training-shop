-- +goose Up
CREATE TABLE ratings
(
    id SERIAL PRIMARY KEY,
    rating REAL NOT NULL,
    product_id INTEGER REFERENCES products (id) NOT NULL
);

INSERT INTO ratings(rating, product_id) VALUES
    (8.3, 1),
    (5.6, 3),
    (8.1, 2),
    (7.1, 4),
    (6.2, 5);

-- +goose Down
DROP TABLE ratings;