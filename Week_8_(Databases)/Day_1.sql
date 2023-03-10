USE Company;
SELECT * FROM Employee;

SELECT * FROM Employee ORDER BY FNAME;

SELECT * FROM Employee ORDER BY Salary DESC LIMIT 3;

SELECT Salary, COUNT(*) AS 'Number of Employees' FROM Employee GROUP BY Salary;

SELECT * FROM Employee WHERE FNAME LIKE 'A_%N';

UPDATE Employee SET FNAME = 'Tristan', LNAME = 'Green' WHERE FNAME = 'Ramesh'; 

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employee WHERE BDATE BETWEEN '1995-01-01' AND '2000-01-01';

-- Displaying department that has more than 3 employees -----------------
SELECT DNO, COUNT(*) AS 'Number of Employess' FROM Employee GROUP BY DNO HAVING COUNT(*)>3;

SELECT * FROM Employee;

SELECT SUM(Salary) AS 'Total Amount', COUNT(*) AS 'Number of Employees with same Salary' FROM Employee GROUP BY Salary HAVING COUNT(*)>= 3;

SELECT FNAME, LNAME, Salary, DNAME FROM Employee INNER JOIN Department ON DNUMBER = DNO;

SELECT FNAME, LNAME, Salary, DNAME FROM Employee LEFT JOIN Department ON DNUMBER=DNO;

SELECT e.FNAME, e.LNAME, e.SALARY, d.DNAME FROM Employee e LEFT JOIN Department d ON e.DNO = d.DNUMBER;
