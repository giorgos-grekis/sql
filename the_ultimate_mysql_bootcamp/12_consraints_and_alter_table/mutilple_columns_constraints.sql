CREATE TABLE companies(
    name VARCHAR(255) NOT NULl,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);
-- 
INSERT INTO companies(name, address)
VALUES ('blackbird auto', '123 spruce');
-- this is not work because has a duplicate entry, error:
-- ERROR 1062(23000): Duplicate entry 'blackbird auto 123 spruce' for key 'companies.name_address'
INSERT INTO companies(name, address)
VALUES ('blackbird auto', '123 spruce');
-- create new table houses;
CREATE TABLE houses (
    purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);