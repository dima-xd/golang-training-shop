-- +goose Up
CREATE TABLE product_categories
(
    id SERIAL PRIMARY KEY,
    category CHARACTER VARYING(100) NOT NULL
);

INSERT INTO product_categories(category) VALUES
    ('electronics'),
    ('home'),
    ('computers'),
    ('furniture'),
    ('software');

-- +goose Down
DROP TABLE product_categories;