-- create and select the database
DROP DATABASE IF EXISTS shopDB;
CREATE DATABASE shopDB;
USE shopDB;

-- create the tables for the database
CREATE TABLE school(
  schoolID          INT            NOT NULL   AUTO_INCREMENT,
  school_Address    VARCHAR(255)   NOT NULL
  PRIMARY KEY (schoolID),
  UNIQUE INDEX school_Address(schhol_Address)
  );

CREATE TABLE professor(
  professorID       INT            NOT NULL   AUTO_INCREMENT,
  firstName         VARCHAR(60)    NOT NULL,
  lastName          VARCHAR(60)    NOT NULL,
  PRIMARY KEY (professorID),
  );
 
CREATE TABLE student(
  studentID         INT            NOT NULL   AUTO_INCREMENT,
  student_Address   VARCHAR(255)   NOT NULL
  firstName         VARCHAR(60)    NOT NULL,
  middleName        VARCHAR(60)    NOT NULL,
  lastName          VARCHAR(60)    NOT NULL,
  dateofbirth       VARCHAR(60)    NOT NULL,
  PRIMARY KEY (studentID),
  );

CREATE TABLE class(
  classID           INT            NOT NULL   AUTO_INCREMENT,
  professorID       INT            NOT NULL,
  name              VARCHAR(60)    NOT NULL,
  class_Credit      INT            NOT NULL,
  location          VARCHAR(255)   NOT NULL,
  time              VARCHAR(60)    NOT NULL,
  day               VARCHAR(60)    NOT NULL,
  section           INT            NOT NULL,
  PRIMARY KEY (classID),
  Index professorID(professorID)
  );
  
  

-- Insert data into the tables
INSERT INTO school (schoolID, school_Address) VALUES
(1, '4225 University Avenue'),
(2, '1241 Armor Road'),

INSERT INTO professor (professorID, lastName, firstName) VALUES
(1, 'Smith', 'Aurelio'),
(2, 'Roger', 'Smith'),
(3, 'Reeves', 'Conny'),


INSERT INTO student (studentID, student_Address, firstName, middleName, lastName, dateofbirth) VALUES
(1, '0242 University Avenue', 'William', 'Daniel', 'John', 'September 7, 1993'),
(2, '1316 Armor Road', 'Fabian', 'Steven', 'Hucke', 'October 7, 1996'),
(3, '6436 Brookes Avenue', 'Jennifer', 'Elizabeth', 'Bowers', 'January 11, 1999'),
(4, '2141 Congress Ct', 'Victor', 'Tim', 'Nguyen', 'June 19, 1991'),



INSERT INTO class (classID, professorID, name, class_Credit, location, time, day, section) VALUES
(1, 2, 'COBOL', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(2, 1, 'Server Side', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(3, 3, 'Geography', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01),;

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';