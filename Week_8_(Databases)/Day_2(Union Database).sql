USE Company;
SELECT * FROM department;

-- select all employees name and sort them from A to Z
SELECT FNAME, LNAME FROM Employee ORDER BY FNAME ASC, LNAME ASC;
-- select those three employees who receive highest salary
SELECT * FROM Employee ORDER BY SALARY DESC LIMIT 3;
-- find out all different salaries and number of employees receiving same salaries.
SELECT SALARY, COUNT(*) AS 'Number of Employees' FROM Employee WHERE SALARY IS NOT NULL GROUP BY SALARY;
-- select those employees records whoe name should start with A and end with N. employee first name should be at least three character.
SELECT * FROM Employee WHERE FNAME LIKE 'A_%N';
-- write a query which update all those employees first name and last name who's first name is Ramesh.
UPDATE Employee SET FNAME='Zak', LNAME='Pardis' WHERE FNAME='Ramesh';
select * from employee;
-- delete all those employees who are bornned from 1995-01-01 and 2000-01-01
DELETE FROM Employee WHERE BDATE BETWEEN '1995-01-01' and '2000-01-01';

-- --------------- HAVING Clause -----------------------
-- Display department which has more than 3 employees
SELECT DNO, COUNT(*) AS 'Number of Employees' FROM Employee GROUP BY DNO HAVING COUNT(*)>2;

-- dispplay total ammount, number of employees, and the salary where three or more employee receive same salary.
SELECT SALARY, SUM(SALARY) AS 'Total Amount', COUNT(*) AS 'Number of Employees' FROM Employee
GROUP BY SALARY HAVING COUNT(*)>=3;

-- ------------------------------------------------------------
CREATE DATABASE UnionDB;
USE UnionDB;
CREATE TABLE Instructor (instructorID INT NOT NULL, instructorName VARCHAR(10));
CREATE TABLE Trainer (trainerID INT NOT NULL, trainerName VARCHAR(10), trainerAge INT);

INSERT INTO Instructor (instructorID, instructorName) Values (1,'Zak'),(2,'Tim'),(3,'Chris');
INSERT INTO Trainer (trainerID, trainerName, trainerAge) Values (1,'Zak', 25),(2,'Abdul', 27),(3,'Narayan', 30);
select * from Instructor;
select * from Trainer;


-- UNION -----------------

SELECT InstructorID, instructorName FROM Instructor
 UNION ALL
SELECT TrainerID, trainerName FROM Trainer;

SELECT instructorID, instructorName, trainerID, trainerName FROM Instructor INNER JOIN Trainer 
ON instructorID=trainerID;

-- LEFT JOIN

SELECT instructorID, instructorName, trainerID, trainerName FROM Instructor RIGHT JOIN Trainer
ON instructorID=trainerID;

-- select all employees and thier department name if they are member of department - use INNER JOIN
SELECT * FROM Employee;
SELECT FNAME, LNAME, SALARY, DNAME FROM Employee INNER JOIN Department ON DNUMBER=DNO;
-- select all employees and thier department name  - use LEFT JOIN
SELECT e.FNAME, e.LNAME, e.SALARY, d.DNAME FROM Employee e LEFT JOIN Department d ON e.DNO=d.DNUMBER;



