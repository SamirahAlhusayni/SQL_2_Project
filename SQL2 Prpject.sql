-- SQL 2

-- Create a table of excellent students from students table where the GPA > 90

CREATE TABLE ExStudent
SELECT * FROM Students 
WHERE Student_GPA > 90;

/*Create a table for students who have not 
passed from the students ’table, so that this table 
contains data for students whose GPA is less than 60 */
CREATE TABLE NPStudents
SELECT * FROM Students 
WHERE Student_GPA < 60;


-- Show student names that start with the letter A.
SELECT Student_name From Students
WHERE Student_name LIKE 'A%';

-- Show the names of students whose names contain four Characters
SELECT Student_name From Students
WHERE Student_name LIKE '____';


-- Aggregate functions (AVG, MAX, MIN) on GPA

SELECT AVG (Student_GPA) 'GPA Average',
max (Student_GPA) 'MAximum GPA',
min (Student_GPA) 'Minimum GPA'
FROM Students;


/* List and display the names of the students who excelled in
 the sixth level, who obtained an average grade point average of 100 */
 SELECT Student_name FROM ExStudent
 WHERE AcademicLevel =6 AND Student_GPA = 100;

 -- Show students who are in the first level and between the ages of 15 and  16 years
SELECT * from students
WHERE  AcademicLevel =1 AND  Sttudent_birthDate BETWEEN '2005-01-01' AND '2005-01-01';

-- Display the number of students present in level 2

SELECT COUNT(Student_id)
FROM Students WHERE AcademicLevel =2;

-- Show students' tracks in the school without repetition
SELECT DISTTNCT Student_track
FROM Students;

-- Show the subjects' nmes with capital letters.
SELECT Upper(Subject_name) FROM courses;


-- Display the arithmetic average and round the number to the nearest smaller number (using numerical functions).
Select floor(avg(Student_GPA )) from students;



 -- Replace F to Female and M to MALE
 SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET Student_gender = 'FEMALE' WHERE Student_gender ='F';
SELECT * FROM Students;

UPDATE Students
SET Student_gender = 'MALE' WHERE Student_gender ='M';
SELECT * FROM Students;

-- Update the GPA for student's GPA into GPA+5 if GPA < 60
UPDATE Students
SET Student_GPA = Student_GPA + 5 
WHERE Student_GPA < 60;
