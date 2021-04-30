-- +goose Up
CREATE TABLE offices
(
    id SERIAL PRIMARY KEY,
    city CHARACTER VARYING(100) NOT NULL,
    phone CHARACTER VARYING(15) NOT NULL,
    address CHARACTER VARYING(50) NOT NULL
);

INSERT INTO offices(city, phone, address) VALUES
    ('Ely', '07766492336', '59 Botley Road'),
    ('Carlisle', '07701826255', '110 Trehafod Road'),
    ('Chichester', '07073916002', '57 Fox Lane'),
    ('Chester', '07050012552', '125 Boat Lane'),
    ('Sheffield', '07754990182', '61 Balsham Road');

-- +goose Down
DROP TABLE offices;