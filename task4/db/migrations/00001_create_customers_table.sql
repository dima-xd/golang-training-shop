-- +goose Up
CREATE TABLE customers
(
    id SERIAL PRIMARY KEY,
    name CHARACTER VARYING(30) NOT NULL,
    surname CHARACTER VARYING(30) NOT NULL,
    contact CHARACTER VARYING(30) NOT NULL
);

INSERT INTO customers(name, surname, contact) VALUES
    ('Usman', 'Small', 'aardo@sbcglobal.net'),
    ('Brendon', 'Hines', 'jandrese@outlook.com'),
    ('Jill', 'Lang', 'simone@live.com'),
    ('Philippa', 'Merritt', 'tedrlord@yahoo.com'),
    ('Nevaeh', 'Drummond', 'cantu@gmail.com');

-- +goose Down
DROP TABLE customers;