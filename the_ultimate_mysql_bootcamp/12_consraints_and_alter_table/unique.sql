CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
-- insert into database
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');
-- This insert would result in an error because the phone is not unique:
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');