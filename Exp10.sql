 -- A
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
	CURSOR student_cursor IS SELECT sname FROM Student ;
	snm Student.sname %type;
BEGIN
	OPEN student_cursor;
	IF student_cursor%ISOPEN FALSE then
		dbms_output.put_line('Cannot open cursor');
	ELSE
		LOOP
			FETCH student_cursor INTO snm;
			IF student_cursor%NOTFOUND then
				Exit;
			END IF;
			dbms_ output.put_line('' ||snm);
		END LOOP;
		dbms_output.put_line('Total Records: ' ||student_cursor%rowcount);
	CLOSE student_cursor;
END;

 -- C
DECLARE
	CURSOR student_cursor IS SELECT sname FROM Student;
BEGIN
	FOR snm IN student_cursor LOOP	
		dbms_output.put_line('' || snm);
	END LOOP;
END;
