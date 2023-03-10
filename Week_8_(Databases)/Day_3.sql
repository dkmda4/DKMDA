-- Insert Ignore -----------

USE UnionDB;
DESC Instructor;
SELECT * FROM Instructor;
INSERT IGNORE INTO Instructor (InstructorID, InstructorName) VALUES 
(12, 'Davis'),
(9, 'Abdul'),
('Wrong', 'Mark'),
(10, 'Richie'),
(11, 'Amanda');

ALTER TABLE Instructor ADD PRIMARY KEY (InstructorID);

-- On delete cascade ------------

CREATE DATABASE OnDeleteCascade; 
USE OnDeleteCascade;
CREATE TABLE Country (CountryID INT PRIMARY KEY, CountryName VARCHAR (10) NOT NULL);
INSERT INTO Country (CountryID, CountryName) VALUES (1,'UK'), (2,'USA'), (3,'GERMANY');

CREATE TABLE City (CountryID INT, CityID INT PRIMARY KEY AUTO_INCREMENT, CityNAME VARCHAR (10) NOT NULL,
FOREIGN KEY (CountryID) REFERENCES Country(CountryID) ON DELETE CASCADE); 

INSERT INTO City (CountryID, CityName) VALUES (1, 'London'), (1, 'Manchester'), (2,'NewYork'), (2, 'California'), (3,'Berlin');

SELECT * FROM City;

DELETE FROM Country WHERE CountryName = 'UK'; 
DELETE FROM Country WHERE CountryName = 'GERMANY'; 

-- Task -----------------------

CREATE TABLE Brands (BrandID INT PRIMARY KEY, BrandName VARCHAR (20), BrandCountry VARCHAR (20));
INSERT INTO Brands (BrandID, BrandName, BrandCountry) VALUES 
(1, 'BMW', 'Germany'), (2, 'Tesla', 'USA'), (3,'LandRover', 'UK'), (4,'Ferrari', 'Italy'), (5, 'Bugatti', 'France');

DROP TABLE Brands;

CREATE TABLE Models (BrandID INT, ModelID INT PRIMARY KEY AUTO_INCREMENT ,Model VARCHAR (10),
FOREIGN KEY (BrandID) REFERENCES Brands (BrandID) ON DELETE CASCADE);

INSERT IGNORE INTO Models (BrandID, Model) VALUES (1, '8 Series'), (2, 'Model X'), (3, 'Range Rover'), (4, 'LaFerrari'), (5, 'Chiron'); 

SELECT * FROM Models;

-- CASE Expression ---------------

-- Syntax for CASE is: CASE VALUE, then statement and then End value
-- Condition - If the first condition becomes true, then the body of the condition will be executed 

USE Company;
SELECT * FROM Employee;

/* 
If Salary <20000 add 2000
If Salary > 20000 then dont add a bonus
*/

SELECT FNAME, LNAME, SALARY,
CASE 
	WHEN Salary < 30000 THEN Salary + 2000 
END AS 'Salary With Bonus'
FROM Employee;

SELECT FNAME, LNAME, Salary,
CASE 
WHEN Salary <= 25000 THEN Salary + 5000
WHEN Salary  = 30000 AND Salary > 25000 THEN Salary + 3000
WHEN Salary BETWEEN 31000 AND 40000 THEN Salary + 2000
END AS 'Salary with Bonus'
FROM employee;


-- Write a query with deduct amount of money as above from salaries ---

SELECT FNAME, LNAME, Salary,
CASE 
WHEN Salary BETWEEN 20000 AND 29000 THEN Salary - 2000
WHEN Salary BETWEEN 30000 AND 39000 THEN Salary - 4000
WHEN Salary BETWEEN 40000 AND 49000 THEN Salary - 6000
WHEN Salary > 50000 THEN Salary - 8000
END AS 'Salary After Deductions'
FROM Employee;

