CREATE DATABASE Centre;
USE Centre;

CREATE TABLE Courses
(CourseID INT PRIMARY KEY AUTO_INCREMENT, Levels VARCHAR(30), Sessions VARCHAR(30), InstructorName VARCHAR(30), StartDate DATE, LessonTime TIME);

CREATE TABLE Members
(MemberID INT PRIMARY KEY NOT NULL, FirstName VARCHAR(30), Surname VARCHAR(30), DOB DATE, Address VARCHAR(50), City VARCHAR(20));

CREATE TABLE Lessons
(LessonID INT PRIMARY KEY NOT NULL, CourseID INT, MemberID INT,
FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
FOREIGN KEY (MemberID) REFERENCES Members (MemberID)); 

DROP TABLE Courses;
ALTER TABLE Lessons DROP PRIMARY KEY;
ALTER TABLE Courses DROP PRIMARY KEY;

INSERT INTO Courses (CourseID, Levels, Sessions, InstructorName, StartDate, LessonTime) 
VALUES (01, 1, 1, 'David', '2021-09-05','09:00:00'), (02, 4, 3, 'Christian', '2021-09-13', '13:00:00'),
	   (03, 2, 10, 'Belle', '2022-01-01', '08:45:00'), (04, 5, 4, 'Deonte', '2022-12-04', '10:00:00'),
       (05, 3, 8, 'Olivia', '2021-01-09', '11:00:00'), (06, 7, 9, 'Ben', '2020-09-01', '12:00:00');
       
INSERT INTO Members (MemberID, FirstName, Surname, DOB, Address, City)
VALUES (001, 'Kieran', 'Green', '1997-03-04', '32 The Green SW1 8VO', 'London'),
	   (002, 'Shawn', 'Bell', '1996-07-05', '75 Kings Road N12 5CA', 'London'),
       (003, 'Elizabeth', 'Grey', '1991-06-23', '64 York Road SE18 4US', 'Birmingham'),
       (004, 'Tasha', 'Brown', '1995-04-19', '23 Queens Road SE59 3AD', 'Manchester'), 
       (005, 'Tristan', 'Davis', '1996,04-04', '89 High Street GU37 0OD', 'GUILDFORD'),
       (006, 'Reuben', 'Howard', '1992-12-04', '718 King Street NN6 2KM', 'NORTHAMPTON');
       

INSERT INTO Lessons (LessonID, CourseID, MemberID)
VALUES 				(1,1,1),
					(2,2,2),
                    (3,3,3),
                    (4,4,4),
                    (5,5,5),
                    (6,6,6); 
                    
                    


DESCRIBE Lessons;
SELECT * FROM Courses;

-- A -----------
SELECT CourseID, InstructorName FROM Courses WHERE CourseID < 5 OR InstructorName;
SELECT CourseID, LessonTime FROM Courses WHERE CourseID > 5 AND LessonTime < 12:00;

-- B ------------
SELECT CourseID, InstructorName, StartDate FROM Courses WHERE CourseID < 5 ORDER BY StartDate ASC;
SELECT MemberID FROM Members ORDER BY MemberID DESC;

-- C ------------

UPDATE Members SET Address = '48 Greenford Road N17 6FT' WHERE MemberID = 001;
UPDATE Members SET Address = '59 Ashford Avenue AS6 8DU', City = 'Ashford' WHERE MemberID = 002;
UPDATE Members SET Address = '4 Wallace Place LE11 4TW', City = 'Loughborough' WHERE MemberID = 003;

-- D -------------

SELECT MAX(LessonID) FROM Lessons;
SELECT MIN(LessonID) FROM Lessons;

SELECT MAX(MemberID) FROM Members;
SELECT MIN(MemberID) FROM Members;

-- E ------------

SELECT COUNT(MemberID) FROM Members;
SELECT SUM(Sessions) FROM Courses;
SELECT AVG(LessonTime) FROM Courses;

-- F ------------

SELECT * FROM Members WHERE Surname LIKE 'A%';
SELECT * FROM Members WHERE Surname LIKE '%A';
SELECT * FROM Members WHERE Surname LIKE '%AB%';
SELECT * FROM Members WHERE FirstName LIKE '_B%';
SELECT * FROM Members WHERE Surname LIKE 'A__';
SELECT * FROM Members WHERE Surname LIKE 'A%Y';
SELECT * FROM Members WHERE Surname NOT LIKE 'A%'AND Surname LIKE '%Y';



