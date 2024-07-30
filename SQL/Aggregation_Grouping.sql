
SHOW DATABASES;
USE db2;
SHOW TABLES;

SELECT * FROM Learners;

-- Count the number of student who joined the course via LinkedIn, YouTube, Community

SELECT SourceOfJoinning, COUNT(*) AS numberOfStudent
FROM Learners
GROUP BY SourceOfJoinning;

-- NOTE: After SELECT command 
	-- Non aggrigated column can be written but they must be written after group by as well
    -- Aggrigated column can be written after SELECT 

 
SELECT SourceOfJoinning, Location
FROM Learners
GROUP BY SourceOfJoinning, Location;

-- Corresponding to each course, How maney students have enrolled
SELECT * FROM Courses;

SELECT  SelectedCourse, COUNT(*) AS Enrolled_Student
FROM learners
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









  
