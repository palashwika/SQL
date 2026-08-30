DROP TABLE IF EXISTS EmployeeProject;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL,
    location TEXT
);

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    salary REAL NOT NULL,
    department_id INTEGER,
    manager_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    budget REAL,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE EmployeeProject (
    employee_id INTEGER,
    project_id INTEGER,
    hours_worked INTEGER,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);


-- Departments
INSERT INTO Departments VALUES
(1, 'Engineering', 'San Jose'),
(2, 'Marketing', 'San Francisco'),
(3, 'Finance', 'Oakland'),
(4, 'Human Resources', 'Fremont'),
(5, 'Sales', 'San Jose'),
(6, 'Research', 'Berkeley');


-- Employees
INSERT INTO Employees VALUES
(101, 'Alice', 'Chen', 95000, 1, NULL),
(102, 'Brian', 'Smith', 72000, 1, 101),
(103, 'Carlos', 'Garcia', 68000, 1, 101),
(104, 'Diana', 'Patel', 88000, 2, NULL),
(105, 'Ethan', 'Brown', 62000, 2, 104),
(106, 'Fatima', 'Khan', 91000, 3, NULL),
(107, 'George', 'Lee', 58000, 3, 106),
(108, 'Hannah', 'Wilson', 75000, 4, NULL),
(109, 'Ivan', 'Davis', 67000, 5, NULL),
(110, 'Julia', 'Martinez', 61000, 5, 109),
(111, 'Kevin', 'Kim', 83000, NULL, NULL);


-- Projects
INSERT INTO Projects VALUES
(201, 'Website Redesign', 120000, 1),
(202, 'Mobile App', 250000, 1),
(203, 'Social Media Campaign', 80000, 2),
(204, 'Annual Budget', 50000, 3),
(205, 'Employee Training', 40000, 4),
(206, 'Sales Expansion', 150000, 5),
(207, 'AI Research', 300000, 6);


-- EmployeeProject
INSERT INTO EmployeeProject VALUES
(101, 201, 120),
(101, 202, 80),
(102, 201, 150),
(103, 202, 200),
(104, 203, 100),
(105, 203, 180),
(106, 204, 140),
(107, 204, 160),
(108, 205, 100),
(109, 206, 210),
(110, 206, 175);

SELECT department_name, first_name, salary from Employees INNER JOIN Departments ON Employees.department_id=Departments.department_id WHERE salary>=70000; 

SELECT department_name, AVG(salary) FROM Employees INNER JOIN Departments ON Employees.department_id=Departments.department_id GROUP BY Departments.department_name;

SELECT first_name, last_name, project_name FROM Employees INNER JOIN EmployeeProject ON Employees.employee_id=EmployeeProject.employee_id INNER JOIN Projects ON EmployeeProject.project_id=Projects.project_id;
SELECT employee_id, first_name, last_name, department_name FROM Employees INNER JOIN Departments ON Employees.department_id=Departments.department_id;




