-- +goose Up
CREATE TABLE employees
(
    id SERIAL PRIMARY KEY,
    name CHARACTER VARYING(30) NOT NULL,
    surname CHARACTER VARYING(30) NOT NULL,
    office_id INTEGER REFERENCES offices (id) NOT NULL
);

INSERT INTO employees(name, surname, office_id) VALUES
    ('Emelia', 'Hussain', 1),
    ('Firat', 'Welch', 4),
    ('Amal', 'Mcnally', 4),
    ('Zeynep', 'Kline', 2),
    ('Terri', 'Fields', 5);

-- +goose Down
DROP TABLE employees;