
-- For each location, what is the count of each employee and avg salary of the employee in those location
SELECT * FROM employee;

SELECT location, COUNT(*) As emp_number, AVG(Salary) As avg_sal
FROM Employee
GROUP BY Location;

-- For each location, what is the count of each employee and avg salary of the employee in those location
-- But also display firstname and lastname corresponding to each report

SELECT FirstName, LastName, Employee.Location, total, avgSalary
FROM Employee
JOIN
(SELECT Location, COUNT(location) AS total, AVG(Salary) As avgSalary
FROM Employee
GROUP BY Location) AS Temp
ON Employee.Location = Temp.Location;

SELECT * FROM Employee;




