CREATE TABLE companies(
    name VARCHAR(255) NOT NULl,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);
-- 
SELECT *
FROM companies;
-- add new column phone the default value is NULL
ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);
-- add new column employee_count the default value is 0 because is INT 
-- if it is STRING the default VALUE it will be empty string ''
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL;