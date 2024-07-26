SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS db2;
SELECT DATABASE();
USE db2;

CREATE TABLE employee(
	EmpID INT AUTO_INCREMENT,
	FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY (EmpID)
);

SHOW tables;
DESC employee;

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) 
	VALUES("Akash", "Yadav", 23, 27000, "Bhopal");

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES
	("Himanshu", "Deshmukh", 24, 25000, "Bhopal"),
    ("Arvind","Thakur", 24, 40000, "Bhopal"),
    ("Ankit", "Yadav", 18, 0, "Bhopal"),
    ("Omkar", "Joshi", 24, 28000, "Maharastra");
    
INSERT INTO employee(FirstName, LastName, Age, Salary, Location)
	VALUES("Lovekush", "Yadav", 23, 17000, "Ayodhya");

SELECT * from employee;
DROP TABLE employee;

SELECT FirstName, LastName FROM employee;
SELECT FirstName FROM employee where Salary <= 15000;

SELECT FirstName, LastName, Salary FROM employee
	WHERE Salary <= 50000 AND Salary != 0
    ORDER BY Salary DESC;
    
SELECT FirstName, LastName, Salary
	FROM employee
	WHERE Salary <= 50000 AND Salary != 0
    ORDER BY Salary;
