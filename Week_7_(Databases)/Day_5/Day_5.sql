USE Company;


-- Finding the minimum salary an employee is earning --------------------
SELECT MIN(Salary) FROM Employee;

-- Finding the total of all employees salaries in the Employee table ------
SELECT SUM(Salary) FROM Employee;

-- Findin the total salaries of all employess that are male in the employee table ----------------
SELECT SUM(Salary) FROM Employee WHERE Sex= 'M';

-- Finding the minimum and maximum salaries from the employee table ------------------
SELECT MIN(Salary), MAX(Salary) FROM Employee;

-- Group by: Group similar data. We use it to retrieve more meaningful data from the table ------------

-- Findni out how many male and female emplyees there are in the employee table -------------------
SELECT COUNT(*), SEX FROM Employee GROUP BY SEX;

-- This removes the employees whos gender is empty (no data) -----------------------------------
SELECT COUNT(*), SEX FROM Employee SEX WHERE SEX IS NOT NULL GROUP BY SEX;



SELECT MAX(Salary), SEX FROM Employee WHERE SEX IS NOT NULL GROUP BY SEX;

SELECT SUM(Salary), SEX FROM Employee WHERE SEX IS NOT NULL GROUP BY SEX;

-- Wildcard: A way of defining patterns that we want to match the specific data to ------------------

-- Like: A special key in MYSQL used as a wild card -------------------------------------------------

-- (_) underscore = One character (the amount of underscores equals the amount of characters the first letter is also counted in character count) -------------------------------------------------------------------

-- (%) percentage = any number of characters --------------------------------------------------------

-- Exmaples --------------------------------

-- List all employees whos name starts with J ----------------

SELECT * FROM Employee WHERE FNAME LIKE 'j%';

SELECT * FROM Employee WHERE FNAME LIKE 'j_%';

SELECT * FROM Employee WHERE FNAME LIKE 'j____%';

SELECT * FROM Employee WHERE FNAME LIKE 'j%r';

SELECT * FROM Employee WHERE FNAME LIKE '%n';

SELECT * FROM Employee WHERE FNAME LIKE '%oh%';

-- Task -----------------------------

SELECT * FROM Employee WHERE FNAME LIKE '%me%';

SELECT * FROM Employee WHERE FNAME LIKE 'Rames_';

SELECT * FROM Employee WHERE BDATE LIKE '1965%';

SELECT * FROM Employee WHERE FNAME LIKE 'A%N';

SELECT * FROM Employee WHERE FNAME LIKE 'A%' AND FNAME NOT LIKE '%N';

Select * FROM Employee;
 







