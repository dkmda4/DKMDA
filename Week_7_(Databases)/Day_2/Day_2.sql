CREATE DATABASE London;
CREATE DATABASE Paris;
CREATE DATABASE Tokyo;
CREATE DATABASE NewYork;
CREATE DATABASE Moscow;

USE london;
SHOW Tables;

SHOW DATABASES;

CREATE DATABASE DFE4;
CREATE DATABASE DFE555;
DROP DATABASE DFE555; -- Use drop to delete 
USE DFE4;
SHOW TABLES;

-- Data types:
-- 

USE Bootcamp;
DROP TABLE Trainer; -- Will delete the trainer table
CREATE TABLE Trainer (TrainerID INT PRIMARY KEY, TrainerName VARCHAR(15), TrainerDOB DATE, Salary DECIMAL(20,5));
DESCRIBE Trainer; -- Show the definition of the trainer table

-- Inserting data into the tables

INSERT INTO Trainer (TrainerID, TrainerName, TrainerDOB, Salary) VALUES (1, 'Deonte', '1996-12-04', 20.3);

INSERT INTO Trainer(TrainerID, TrainerName, TrainerDOB, Salary) VALUES (2, 'Azariah', '1991-03-04', 10.2),
(3, 'Christian', '1993-01-01', 10.3);

DESCRIBE Trainer;
SELECT * FROM Trainer;

CREATE DATABASE Excercise;
USE Excercise;
CREATE TABLE Cars (CarID INT PRIMARY KEY, CarMake VARCHAR(15), CarModel VARCHAR(15), CarColour VARCHAR(15), FuelType VARCHAR(15));
INSERT INTO Cars (CarID, CarMake, CarModel, CarColour, FuelType) VALUES (1, 'BMW', 'X6M', 'Black', 'Petrol'), (2, 'Land Rover', 'Range Rover', 'Grey', 'Diesel'), (3,'Audi','Q8', 'Dark Blue', 'Hybrid'), (4, 'Tesla', 'Model X', 'White', 'Electric'), (5,'Lamborghini', 'Urus', 'Green', 'petrol')
DESCRIBE Cars;
SELECT * FROM Cars;   

CREATE TABLE Subjects (SubjectID INT PRIMARY KEY AUTO_INCREMENT, TrainerID INT NOT NULL, 
SubjectName VARCHAR(10) DEFAULT 'DataBase', StartDate DATE NOT NULL,
FOREIGN KEY (TrainerID) REFERENCES Trainer (TrainerID)
); 

INSERT INTO Subjects (TrainerID, SubjectName, StartDate) VALUES 
(1,'HTML', '2023-02-21'); 

DESCRIBE Subjects;
SELECT * FROM Subjects;

CREATE TABLE Students (StudentsID INT AUTO_INCREMENT PRIMARY KEY, StudentName VARCHAR(10), StudentAge INT, CHECK (StudentAge>=18)); 
INSERT INTO Students (StudentName, StudentAge)
VALUES ('Ender', 18);

SELECT * FROM Students;



CREATE DATABASE Learners;
USE Learners;
CREATE TABLE Learners (LearnersID INT PRIMARY KEY AUTO_INCREMENT, LearnerName VARCHAR(20) NOT NULL, LearnersAge INT DEFAULT 20, CHECK (LearnersAge >=15)) ;

CREATE TABLE Country (CountryID INT PRIMARY KEY AUTO_INCREMENT, LearnerID INT, CountryName VARCHAR (15) NOT NULL,
FOREIGN KEY (LearnerID) REFERENCES Learners (LearnersID));




