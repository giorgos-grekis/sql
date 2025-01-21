-- captions table
CREATE TABLE captions(
    text VARCHAR (150),
    create_at TIMESTAMP default CURRENT_TIMESTAMP
);
-- insert a value
INSERT INTO captions (text)
VALUES ('just me and the girls chill in');
-- insert a value
INSERT INTO captions (text)
VALUES ('beautiful sunset');
-- captions2 table
CREATE TABLE captions2(
    text VARCHAR (150),
    create_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
-- insert into captions2
INSERT INTO captions2 (text)
VALUES ('i love life!');
-- update captions2
UPDATE captions2
SET text = 'i love live!!!';
-- Employer decided to use PostgresSQL.
-- PostgreSQL does not provide the ON UPDATE function, we have to write this ourselves, so after we've created our new table like that:
CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP default CURRENT_TIMESTAMP
) We create the function to do the updatíng for us:
CREATE OR REPLACE FUNCTION update_timestamp() RETURNS TRIGGER AS $$ BEGIN NEW.updated_at = CURRENT_TIMESTAMP;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER update_timestamp_trigger BEFORE
UPDATE ON captions2 FOR EACH ROW EXECUTE PROCEDURE update_timestamp();