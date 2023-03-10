-- Store Procedure -------
-- This is a Pre-compiled MySQL statement which will store in a database 

/*   Advantages of Store procedure:
	 
	1. Reduces network traffic 

	 Disadvantages of Store procedure:
     
     1. Uses resources 
     
     Store procedure parameters:
     
     IN - Giving value to the store procedure
     
     OUT - The store procedure is giving value to caller or user
	
     
     INOUT - This is doing both the in and out store procedure
     */
     
-- Delimiter in MySQL - We should changed the default delimiter (;)

USE UnionDB;

DELIMITER $$

CREATE PROCEDURE SelectData()
BEGIN 

SELECT * FROM Instructor;

END $$


CALL SelectData();

CALL SelectData()$$

DELIMITER && 
CREATE PROCEDURE insertData () 
BEGIN 
INSERT INTO Instructor (InstructorID, InstructorName) VALUES (40,'John'), (41, 'Matt');
SELECT * FROM Instructor;
END &&

CALL InsertData();

USE OnDeleteCascade;

DELIMITER ^^
CREATE PROCEDURE Updates2()
BEGIN 
INSERT INTO Brands (BrandID, BrandName, BrandCountry) 
VALUES (06, 'Mercedes', 'Germany'), (07, 'Rolls Royce', 'UK');
SELECT * FROM Brands;
END^^

CALL Updates2();

USE Company;

DELIMITER **
CREATE PROCEDURE SelectData (IN empName VARCHAR (10))
BEGIN 
SELECT * FROM Employee WHERE FNAME = empmName; 
END **

CALL SelectData ('Jennifer');

DELIMITER !! 
CREATE PROCEDURE TSalaries (OUT TFSAL INT)
BEGIN 
SELECT SUM(SALARY) INTO TFSAL FROM Employee WHERE Sex = 'F';
END!!

CALL TSalaries(@FemaleSalaries);
SELECT @FemaleSalaries;

USE Company;

DELIMITER $$ 
CREATE PROCEDURE TotalSalary (IN Gender VARCHAR(2), OUT AllSalary INT)
BEGIN 
SELECT SUM(Salary) INTO AllSalary FROM Employee WHERE Sex = 'F';
END$$

CALL TotalSalary ('F', @sal);

SELECT @sal;

DELIMITER ££ 
CREATE PROCEDURE SumOfData (IN a FLOAT, IN b INT)
BEGIN 
SELECT a+b;
END ££ 

CALL SumOfData(15,5);
