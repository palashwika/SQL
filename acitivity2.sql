DROP TABLE IF EXISTS Salesman;
CREATE TABLE Salesman(
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Comission REAL

);
INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
('5001', 'James Hoog', 'New York', 0.15),
('5002', 'Nail Knite', 'Paris', 0.13),
('5005', 'Mc Lyon', 'Paris', 0.11),
('5006', 'Paul Adam', 'Rome', 0.13),
('5003', 'Lauson Hen', 'San Jose', 0.12);

SELECT * FROM Salesman;
SELECT * FROM Salesman WHERE CITY='PARIS';