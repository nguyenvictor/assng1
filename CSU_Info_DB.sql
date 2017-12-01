
DROP DATABASE IF EXISTS CSU_Info_DB;
CREATE DATABASE CSU_Info_DB;
USE CSU_Info_DB;

CREATE TABLE school(
  schoolID         INT            NOT NULL   AUTO_INCREMENT,
  schoolAddress    VARCHAR(255)   NOT NULL,
  PRIMARY KEY (schoolID)
  );

CREATE TABLE professor(
  professorID       INT            NOT NULL   AUTO_INCREMENT,
  firstName         VARCHAR(30)    NOT NULL,
  lastName          VARCHAR(30)    NOT NULL,
  PRIMARY KEY (professorID)
  );
 
CREATE TABLE student(
  studentID         INT            NOT NULL   AUTO_INCREMENT,
  student_Address   VARCHAR(255)   NOT NULL,
  firstName         VARCHAR(60)    NOT NULL,
  middleName        VARCHAR(30)    NOT NULL,
  lastName          VARCHAR(30)    NOT NULL,
  dateofbirth       VARCHAR(30)    NOT NULL,
  PRIMARY KEY (studentID)
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
  
  


INSERT INTO school(schoolID, schoolAddress) VALUES
(1, '4225 University Avenue'),
(2, '1241 Armor Road');

INSERT INTO professor(professorID,lastName,firstName) VALUES
(1, 'Smith', 'Aurelio'),
(2, 'Roger', 'Smith'),
(3, 'Reeves', 'Conny');


INSERT INTO student(studentID,student_Address,firstName,middleName,lastName,dateofbirth) VALUES
(1, '0242 University Avenue', 'William', 'Daniel', 'John', 'September 7, 1993'),
(2, '1316 Armor Road', 'Fabian', 'Steven', 'Hucke', 'October 7, 1996'),
(3, '6436 Brookes Avenue', 'Jennifer', 'Elizabeth', 'Bowers', 'January 11, 1999'),
(4, '2141 Congress Ct', 'Victor', 'Tim', 'Nguyen', 'June 19, 1991');



INSERT INTO class(classID,professorID,name,class_Credit,location,time,day,section) VALUES
(1, 2, 'COBOL', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(2, 1, 'Server Side', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(3, 3, 'Assembly', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01),
(4, 2, 'Math 1100', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(5, 1, 'Math 1200', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(6, 3, 'Math 1300', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01),
(7, 2, 'Science 1', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(8, 1, 'Science 2', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(9, 3, 'Science 3', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01),
(10, 2, 'Geography 1', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(11, 1, 'Geography 2', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(12, 3, 'Geography 3', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01),
(13, 2, 'Eng 1', 3, 'CCT 425', '3:30PM - 4:45PM', 'TR', 01),
(14, 1, 'Eng 2', 3, 'CCT 405', '11:30AM - 12:45PM', 'TR', 01),
(15, 3, 'Eng 3', 3, 'CCT 105', '1PM - 1:50PM', 'MWF', 01);

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';