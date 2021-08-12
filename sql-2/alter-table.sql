ALTER TABLE animals
ADD COLUMN location VARCHAR(20);

INSERT INTO animals (name, type, age, location)
VALUES ('Melman', 'Giraffe', 24, 'New York');

INSERT INTO animals (name, type, age, location)
VALUES ('Skipper', 'Penguin', 12, 'New York');

INSERT INTO animals (name, type, age, location)
VALUES ('Rico', 'Penguin', 15, 'New York');

ALTER TABLE animals
RENAME COLUMN 'type' TO 'species';

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR;