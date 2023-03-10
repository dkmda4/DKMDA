CREATE DATABASE School;
USE School;

CREATE TABLE Student 
(PassportNumber INT PRIMARY KEY AUTO_INCREMENT, StudentName VARCHAR(10) NOT NULL, StudentAge INT DEFAULT 18 NOT NULL);

CREATE TABLE Courses (CourseID INT PRIMARY KEY NOT NULL, CourseName VARCHAR(12), StudentPassport INT,
FOREIGN KEY (StudentPassport) REFERENCES Student (PassportNumber),
CHECK (CourseName = 'HTML' OR CourseName = 'CSS' OR CourseName = 'JavaScript' or CourseName = 'DataBases' or CourseName = 'Python'));

INSERT INTO Student (StudentName, StudentAge) VALUES ('Sarah', 22),('Jack',19),('Christian',24), ('Tasha', 21),('Christine',18);

INSERT INTO Courses (CourseID, CourseName, StudentPassport) VALUES (001, 'HTML', 1), (002, 'CSS', 2),(003, 'JavaScript', 3), (004, 'DataBases', 4), (005, 'Python', 5);

SELECT * FROM Student;

DROP TABLE Courses;

-- ------------------------------------------------------------------

UPDATE Student SET StudentName = 'Emily' WHERE StudentName = 'Sarah';
UPDATE Student SET StudentName = 'Kieran' WHERE StudentName = 'Jack';

SET SQL_SAFE_UPDATES = 0;

-- Task --------------------------------------------------------------

ALTER TABLE Student ADD COLUMN Country VARCHAR(15);
ALTER TABLE Student ADD Salary INT AFTER PassportNumber;
ALTER TABLE Student DROP COLUMN Country;
ALTER TABLE Student MODIFY COLUMN Salary DECIMAL;
ALTER TABLE Student RENAME TO Learners;
ALTER TABLE Learners RENAME COLUMN Salary TO Monthly_Salary;
ALTER TABLE Courses DROP PRIMARY KEY;
ALTER TABLE Courses ADD PRIMARY KEY (CourseID);
ALTER TABLE Courses DROP FOREIGN KEY courses_ibfk_1, DROP KEY Courses;


SELECT CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME IS NOT NULL;

SELECT * FROM Courses, CONSTRAINT_TYPE, 

SELECT * FROM Learners;

DESCRIBE Courses;