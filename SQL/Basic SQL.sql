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
    ORDER BY Salary
    LIMIT 5;
    
-- =========================================================-- 

UPDATE employee SET LastName = "Payre"
WHERE EmpID = 6;

SELECT FirstName, LastName FROM employee
WHERE EmpID=6;

SELECT COUNT(*) FROM employee;

UPDATE employee SET Location = "Indore"
WHERE EmpID=2;

DELETE FROM employee 
WHERE EmpID=5;

DESC employee;

ALTER TABLE employee MODIFY FirstName VARCHAR(25);
ALTER TABLE employee MODIFY LastName VARCHAR(25);
ALTER TABLE employee MODIFY FirstName VARCHAR(25) NOT NULL;
ALTER TABLE employee MODIFY LastName VARCHAR(25) NOT NULL;

ALTER TABLE employee ADD CityCode INT;
ALTER TABLE employee DROP CityCode;
ALTER TABLE employee ADD CityCode INT NOT NULL;

SELECT * FROM employee;

-- =================================================================

SELECT COUNT(*) AS total FROM employee;
SELECT MAX(Salary) AS max_salary FROM employee;
SELECT MIN(Salary) AS min_salary FROM employee;
SELECT SUM(Salary) AS totoal_cost FROM employee;
