
SHOW DATABASES;
USE db2;
SHOW TABLES;

SELECT * FROM Learners;

-- Count the number of student who joined the course via LinkedIn, YouTube, Community

SELECT SourceOfJoinning, COUNT(*) AS numberOfStudent
FROM Learners
GROUP BY SourceOfJoinning;







  
