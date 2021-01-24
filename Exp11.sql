CREATE TABLE emp(
 emp_no int(20),
 emp_name VARCHAR(50),
 salary int(20),
 manager VARCHAR(50),
 dept_no int(20));
 
 CREATE TABLE dept( 
Dept_no int(20), 
Dept_name VARCHAR(50),
LOCATION VARCHAR(50));

BEGIN
INSERT INTO DEPT VALUES(10,‘HR’,‘USA’);
INSERT INTO DEPT VALUES(20,'SALES','UK’);
INSERT INTO DEPT VALUES(30,‘FINANCIAL',‘JAPAN'); 
COMMIT;
END;

BEGIN
INSERT INTO EMP VALUES(1000,'XXX5,15000,'AAA',30);
INSERT INTO EMP VALUES(1001,‘YYY5,18000,‘AAA’,20) ;
INSERT INTO EMP VALUES(1002,‘ZZZ5,20000,‘AAA',10); 
COMMIT;
END;


CREATE VIEW guru99_emp_view(
Employee_name:dept_name,location) AS
SELECT emp.emp_name,dept.dept_name,dept.location
FROM emp,dept
WHERE emp.dept_no=dept.dept_no;

SELECT * FROM guru99_emp_view;
