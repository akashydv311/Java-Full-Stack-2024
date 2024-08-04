
SHOW DATABASES;
USE db2;
SHOW TABLES;

SELECT * FROM Learners;

-- Count the number of student who joined the course via LinkedIn, YouTube, Community

SELECT SourceOfJoinning, COUNT(*) AS Student_Join
FROM Learners
GROUP BY SourceOfJoinning;

-- NOTE: After SELECT command 
	-- Non aggrigated column can be written but they must be written after group by as well
    -- Aggrigated column can be written after SELECT 

 
SELECT SourceOfJoinning, Location
FROM Learners
GROUP BY SourceOfJoinning, Location;

-- Corresponding to each course, How maney students have enrolled
SELECT * FROM Learners;

SELECT SelectedCourse, COUNT(*) AS student
FROM Learners
GROUP BY SelectedCourse;

-- SELECT CourseName, COUNT(*) AS Enrolled_Student
-- FROM Courses
-- GROUP BY CourseName;

-- Corresponding to individual source of joinning, give the maximum years of experiance any person have
SELECT * FROM learners;

SELECT SourceOfJoinning, MAX(YearsOfExp)
FROM learners
GROUP BY SourceOfJoinning;

SELECT SourceOfJoinning, MIN(YearsOfExp)
FROM learners
GROUP BY SourceOfJoinning;

SELECT SourceOfJoinning, AVG(YearsOfExp)
FROM learners
GROUP BY SourceOfJoinning;

SELECT SourceOfJoinning, SUM(YearsOfExp)
FROM learners
GROUP BY SourceOfJoinning;

SELECT * FROM Learners;
SELECT * FROM Employee;
SELECT * FROM Courses;

-- Display the records of those learners who have joined  the course via more then 1 source of joinning 
-- After group by we have to use Having clause not whare for filter

SELECT  SourceOfJoinning, COUNT(*) AS Std_learners
FROM Learners
GROUP BY SourceOfJoinning
HAVING Std_learners > 1;

-- Display the count of those students who have joined via linkedIn
SELECT SourceOfJoinning , COUNT(*) AS LinkedIn
FROM Learners
GROUP BY SourceOfJoinning
HAVING SourceOfJoinning = 'YouTube';

-- Logical Operators

-- Display the course which doesn't include 'Excel'
SELECT * FROM Courses;

SELECT * FROM Courses
WHERE CourseName NOT LIKE '%Excal%';

-- Display the records of those students who have less then 4 years of experiance and source of joinning is youtube and location is channai
SELECT * FROM Learners;

SELECT * FROM Learners
WHERE YearsOfExp < 4 AND SourceOfJoinning = 'YouTube' AND Location = 'Chennai';

-- Display the records of those students who have years of experiance Bitween 1 to 3 years
SELECT * FROM Learners
WHERE YearsOfExp BETWEEN 1 AND 3;

-- ALTER COMMAND IN SQL

DESC Employee; 

ALTER TABLE Employee ADD COLUMN 
JobPosition VARCHAR(50);

ALTER TABLE Employee ADD COLUMN 
Temp VARCHAR(50);

ALTER TABLE Employee MODIFY 
FirstName VARCHAR(22);

ALTER TABLE Employee DROP
Temp;

ALTER TABLE COURSES RENAME Course;

-- TRUNCATE IN SQL
-- DELETE (DML) VS TRUNCATE (DDL)



-- DATATYPES IN SQL
-- INT, VARCHAR, TIMESTAMP, FOAT

DESC Course;

CREATE TABLE Temp1(
StudentName VARCHAR(20),
StudentAge DECIMAL(3,1)
);

DESC Temp1;

INSERT INTO Temp1 VALUES ('Akash', 23.5);
INSERT INTO Temp1 VALUES ('Himanshu', 26.8);

SELECT * FROM Temp1;

TRUNCATE TABLE Temp1;

DROP TABLE Temp1;



CREATE TABLE Course_Update(
CourseID INT AUTO_INCREMENT,
CourseName VARCHAR(50) NOT NULL,
CourseDuration DECIMAL(3,1) NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY (CourseID)
);

INSERT INTO Course_Update(CourseName, CourseDuration, CourseFee) 
VALUES("DSA Interview Prepration", 3.4, 4999),
("Excal Mastrey", 2.1, 3000),
("SQL Complete Mastrey", 5.0, 6500);

SELECT * FROM Course_Update;




  
