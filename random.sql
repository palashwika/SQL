DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees(
    Employee_id TEXT,
    name TEXT,
    position TEXT,
    purch_amt REAL,
    purch_date TEXT,
    purch_time TEXT
);

INSERT INTO Employees (Employee_id, name, position, purch_amt, purch_date, purch_time) VALUES

('A101', 'Sarah Gail', 'Executive', 12000, '2026-06-20', '23:10' ),
('A103', 'Tarun Patel', 'Office Assistant', 30000, '2024-04-13', '21:30' ),
('A103', 'Tarun Patel', 'Office Assistant', 350000000, '2025-07-18', '22:13' ),
('A102', 'Gabrielle Castro', 'Office Assistant', 120, '2026-06-20', '23:10' ),
('A105', 'Walter White', 'Manager', 12000, '2026-06-20', '23:10' );

SELECT * FROM Employees;
SELECT Employee_id, name, purch_date FROM Employees WHERE purch_amt>1000 AND position='Office Assistant';