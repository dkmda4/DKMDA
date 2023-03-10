USE UNIONDB;

-- Self Join -----------

USE COMPANY;
SELECT * FROM Employee;

-- Display all employees first and last and their supervisor firsr and last name ------------

SELECT FNAME, LNAME, SSN, SUPERSSN FROM Employee;

-- Answer --------------

SELECT e.FNAME AS 'EMP FirstName', e.LNAME AS 'EMP LastName', m.FNAME AS 'Manager FirstName', m.LNAME AS 'Manager LastName'
FROM Employee e INNER JOIN Employee m on e.SUPERSSN = m.SSN;

-- Selecting data from multiple tables without using join ---------------

SELECT CONCAT( 'Zak', 'Pardis');
SELECT CONCAT(FNAME, ' ', LNAME) AS 'Employee Full Name' FROM Employee;

SELECT CONCAT(FNAME, ' ', LNAME) AS 'Employee Full Name', CONCAT('£ ',Salary, ' Per year') FROM Employee;

SELECT FNAME, LNAME, DNAME FROM Employee, Department WHERE DNO = DNUMBER;

SELECT FNAME, LNAME, DNAME, PNAME FROM Employee, Department, Project WHERE DNO = DNUMBER AND DNUMBER = DNUM;

-- Functions in MySQL ---------------

SELECT CURRENT_DATE() AS 'Current Date'; 
SELECT CURRENT_TIME() AS 'Current Time';
SELECT CURRENT_TIMESTAMP(); -- A way to get the current date and time.
SELECT NOW(); -- Another way to get the current date and time.
SELECT MONTHNAME (CURDATE()); -- A way to get the current month. 
SELECT YEAR(CURDATE()); -- A way to get the current year. 
SELECT DAYNAME(CURDATE()); -- A way to get the current day.  

-- CURDATE = Current date 

SELECT DAY(CURDATE()); -- A way to find the actual date. 

SELECT CURRENT_USER(); -- Checks who was the last person on the database.

USE Company;

SELECT  UCASE( CONCAT(FNAME,' ', LNAME) AS FullName FROM Employee;







