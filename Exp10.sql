--A

CREATE TABLE Student(
   name varchar(20),
   rollno int(10),
   mark int(10)
   );
   
INSERT INTO Student values(
      ('Sam','2','55'),
      ('Dan','5','66'),
      ('Emma','8','77')
      );

-- B

DECLARE
	CURSOR student_cursor IS SELECT sname FROM Student;
BEGIN
	FOR snm IN student_cursor LOOP	
		dbms_output.put_line('' || snm);
	END LOOP;
END;
