CREATE TABLE STUDENT (SNO INT(5), NAME CHAR(20),MARKS INT(5), DEPARTMENT CHAR(20));
INSERT INTO STUDENT VALUES ('1','AMMU','85','CS'),('2','APPU','87','CS'),('3','MANU','80','CS'),('4','RON','84','CS');
ALTER TABLE STUDENT ADD AGE INT(5);
ALTER TABLE STUDENT MODIFY DEPARTMENT VARCHAR(10);
ALTER TABLE STUDENT DROP MARKS;
UPDATE TABLE STUDENT TO STUDENTS;
DELETE FROM STUDENTS;
DROP TABLE STUDENTS;
