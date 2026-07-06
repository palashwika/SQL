CREATE TABLE IF NOT EXISTS supplier2 (
    SNO TEXT PRIMARY KEY, 
    SNAME TEXT,
    STATUS INTEGER,
    CITY TEXT
);

INSERT INTO supplier2 (SNO, SNAME, STATUS, CITY) VALUES
('S1', 'Smith', 20,'London'),
('S2', 'Jones', 10,'Paris'),
('S3', 'Blake', 30,'Paris'),
('S4', 'Clarke', 20,'London'),
('S5', 'Adams', 20,'Athens');

-- SELECT SNAME, STATUS, SNO FROM supplier2 WHERE SNAME='Smith';
SELECT * FROM supplier2;
