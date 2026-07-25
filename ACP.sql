-- ---- PART 1: Create and Explore the Product Table ----

DROP TABLE IF EXISTS PRODUCT;

CREATE TABLE PRODUCT (
    PRO_ID      TEXT PRIMARY KEY,
    PRO_NAME    TEXT NOT NULL,
    PRO_PRICE   INTEGER NOT NULL,
    PRO_COM     TEXT NOT NULL
);

-- Insert sample computer store products
INSERT INTO PRODUCT (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
('101', 'MOTHER BOARD',      3200, 'TECHPRO'),
('102', 'KEY BOARD',          450, 'KEYMAX'),
('103', 'ZIP DRIVE',          250, 'DATAFIX'),
('104', 'SPEAKER',            550, 'SOUNDCO'),
('105', 'MONITOR',           5000, 'VIEWTECH'),
('106', 'DVD DRIVE',          900, 'DATAFIX'),
('107', 'CD DRIVE',           800, 'DATAFIX'),
('108', 'PRINTER',           2600, 'PRINTPLUS'),
('109', 'REFILL CARTRIDGE',   350, 'PRINTPLUS'),
('110', 'MOUSE',              250, 'KEYMAX');

--And/OR Clause
SELECT PRO_NAME, PRO_PRICE FROM PRODUCT WHERE PRO_PRICE>700 AND PRO_COM=="DATAFIX";
SELECT first_name, customer_id FROM Customers WHERE age>25 OR country="USA";

--LIKE
SELECT first_name, last_name FROM Customers WHERE last_name LIKE 'Doe%';
SELECT first_name, last_name FROM Customers WHERE first_name LIKE 'John%';
SELECT PRO_NAME FROM PRODUCT WHERE PRO_NAME LIKE "BOARD";

--Min and Max
SELECT PRO_NAME, min(PRO_PRICE)AS MIN_PRICE FROM PRODUCT;
SELECT PRO_NAME, max(PRO_PRICE) AS MIN_PRICE FROM PRODUCT;

--UPDATE
UPDATE Orders SET amount=700 WHERE item="Monitor";
UPDATE Shippings SET status="Delivered" WHERE shipping_id=1;

--DELETE
DELETE FROM Shippings WHERE shipping_id=1;
DELETE FROM PRODUCT WHERE PRO_ID=110;










