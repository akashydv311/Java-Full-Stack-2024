SHOW DATABASES;
USE db2;
SHOW TABLES;

CREATE TABLE Courses(
CourseID INT AUTO_INCREMENT,
CourseName VARCHAR(50) NOT NULL,
CourseDuration INT NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY (CourseID)
);

INSERT INTO Courses(CourseName, CourseDuration, CourseFee) 
VALUES("DSA Interview Prepration", 3, 4999),
("Excal Mastrey", 2, 3000),
("SQL Complete Mastrey", 5, 6500);

DELETE FROM Courses
WHERE CourseID != 0;
DROP TABLE courses;

SELECT * FROM Courses;

DESC Courses;

CREATE TABLE Learners(
LearnerID INT AUTO_INCREMENT,
LearnerFirstName VARCHAR(50) NOT NULL,
LearnerLastName VARCHAR(50) NOT NULL,
LearnerEmailID VARCHAR(50) NOT NULL,
LearnerPhone VARCHAR(50) NOT NULL,
LearnerEnrollmentDate TIMESTAMP NOT NULL,
SelectedCourse INT NOT NULL,
YearsOfExp INT,
SourceOfJoinning VARCHAR(50) NOT NULL,
LearnerCompany VARCHAR(50) NOT NULL,
BatchStartDate TIMESTAMP NOT NULL,
Location VARCHAR(50) NOT NULL,

PRIMARY KEY (LearnerID),
UNIQUE KEY (LearnerEmailID),
FOREIGN KEY (SelectedCourse) REFERENCES Courses (CourseID)
);

-- Batch Start Date '1' = '2024-02-29'
-- Batch Start Date '2' = '2024-01-16'
-- Batch Start Date '3' = '2024-03-25'

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailID, LearnerPhone, LearnerEnrollmentDate, SelectedCourse, YearsOfExp, SourceOfJoinning, LearnerCompany, BatchStartDate, Location)
VALUES
("Akash", "Yadav", "ay36808@gmail.com", "6261626100", '2024-02-27', 1, 2, "Youtube", "Infosys", '2024-02-29', "Bhopal"),
("Akhil", "George", "akhil.george.8743@gmail.com", "1234567890", '2024-01-14', 2, 6, "Linkdin", "TCS", '2024-01-16', "Benguluru"),
("Rishikesh", "Joshi", "carjkop@gmail.com", "9087654321", '2024-03-17', 3, 15, "Community", "Amazon", '2024-03-25', "Pune"),
("Madhuram", "Ravichadran", "ravichadran.madhuram@gmail.com", "2345676432", '2024-02-22', 1, 4, "Linkedin", "Wipro", '2024-02-29', "Indore"),
("Jeevan", "Hegde", "jeevanhegade@gmail.com", "9923452345", '2024-01-11', 2, 18, "Youtube", "Congni", '2024-01-16', "Chennai"),
("Sidhish", "Kumar", "sidhishkumar@gmail.com", "9876234523", '2024-03-12', 3, 3, "Linkdin", "Google", '2024-03-25', "Jaipur"),
("Naga Sai", "Sreedhar", "saisreedhar2001@gmail.com", "3564897654", '2024-02-10', 1, 14, "Youtube", "Virtusha", '2024-02-29', "Noida");

SELECT * FROM Learners;

-- Data analysis [ Employee, Course, Learners]
-- 1. Give me the record of the employee getting highest salary
DESC Employee;
SELECT * FROM Employee;

SELECT * FROM Employee
ORDER BY Salary DESC
LIMIT 1;  

-- 2. Give me the record of the employee getting highest salary and age is bigger then 23
 SELECT * FROM Employee
 WHERE Age>23
 ORDER BY Salary DESC;
 
 -- 3. Display the number of enrollments in the website of the learners
 SELECT COUNT(*) AS Number_Of_Enrollments FROM Learners;
 
 -- 4. Display the number of enrollments for the course id 3
 SELECT COUNT(*) AS SQL_Course FROM Learners
 WHERE SelectedCourse=3;


-- 5. Count the number of learners enrolled in the month of jan
SELECT COUNT(*) AS STD_JAN FROM Learners 
WHERE LearnerEnrollmentDate LIKE '%-01-%';


SELECT * FROM Learners;
-- 6. Update the jeevan data with year of experience as 1 and compney as Amazon
UPDATE Learners
SET YearsOfExp=2 , LearnerCompany='Amazon'
WHERE LearnerID=5;


-- 7. Count the number of companies where learners doing their job
-- Count is count the non null entries in the table
 
SELECT Count(LearnerCompany) FROM Learners;  









