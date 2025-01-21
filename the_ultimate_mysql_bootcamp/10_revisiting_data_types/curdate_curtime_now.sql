SELECT CURRENT_DATE();
-- short for CURRENT_DATE
SELECT CURDATE();
SELECT CURRENT_TIME();
-- short for CURRENT_TIME
SELECT CURTIME();
SELECT CURRENT_TIMESTAMP();
-- short for CURRENT_TIMESTAMP
SELECT NOW();
-- example query
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());