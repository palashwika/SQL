DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  employee_id INT,
  first_name TEXT,
  last_name TEXT,
  job_title TEXT,
  hourly_pay DECIMAL(5,2),
  city TEXT
);

INSERT INTO employees VALUES
(101, 'Erika', 'Dorkson', 'Janitor', 10.00, 'New York'),
(102, 'Muhammad', 'Ali', 'Cloud Engineer', 60.00, 'Davis'),
(103, 'Aakash', 'Mukundan', 'Systems Administrator', 70.00, 'Fremont'),
(104, 'Enola', 'Dooran', 'Help Desk Technician', 40.00, 'London'),
(105, 'Charan', 'Gandhi', 'Web Developer', 60.00, 'Delhi');

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
  customer_id INT,
  Name TEXT,
  order_id INT,
  item TEXT,
  price DECIMAL(5,2),
  CITY TEXT 
);

INSERT INTO Orders VALUES
(201, 'Amy Jackson', 1, 'Computer', 10.00, "London"),
(202, 'Ranveer Singh', 2,'Cookies', 100.00, "London"),
(203, 'Emily Wong', 3, 'Desk', 70.00, "Delhi"),
(204, 'Erika Duncan', 4, 'Mouse Pad', 40.00, "Fremont"),
(205, 'Charan Gandhi', 5, 'TV', 60.00, "Mumbai");




SELECT first_name FROM Employees WHERE first_name LIKE 'A%';
SELECT first_name, last_name FROM Employees WHERE first_name OR last_name LIKE '%or%';
SELECT item, CITY FROM Orders ORDER BY CITY ASC;
SELECT item, Count(CITY), CITY FROM Orders GROUP BY CITY; 
SELECT item, price FROM Orders ORDER BY price ASC;
