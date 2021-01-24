CREATE TABLE Sailors(sid int(10), 
      sname char(20),
      rating int(20),
      age int(10),
      Primary key (sid));

CREATE TABLE Boats(bid integer, 
          bname char(20), 
          bcolor char(10), 
          primary key (bid)); 

create table reserves (sid integer, 
        bid integer, 
        foreign key (sid) references sailors, 
        foreign key (bid) references boats, 
        primary key (sid, bid));

SELECT * from tab;

INSERT INTO Boats values((101,'glory','yellow'),
          (103,'rose','red'),
          (102,'giant','blue'));

INSERT INTO Sailors values((22,'dustin',37,45),
          (31,'lubber',38,55.5),
          (58,'bob',39,35));

ALTER TABLE Reserves ADD(day date);

INSERT INTO Reserves values(22,101,'10-MAR-00'),
         (58,103,'11-DEC-99'),
         (22,102,'29-MAR-99')); 

Commit;

1
from sailors s  
   Where
   S.Rating=7
   union 
   select r.sid 
   from reserves r 
   where r.bid = 101;

2
SELECT S.sname
FROM Sailors S
WHERE EXISTS (SELECT *
FROM Reserves R
WHERE R.bid=103);

3
SELECT S.sid
FROM Sailors S, Boats B, Reserves R
WHERE S.sid=R.sid AND R.bid=B.bid
AND B.color=‘red’
SELECT *age FROM Sailors;

4
SELECT DISTINCT s.sname FROM sailors s, reserves r 
WHERE s.sid = r.sid;

5 
SELECT s.sid 
    FROM sailors s, boats b, reserves r 
    WHERE s.sid = r.sid And r.bid = b.bid and b.color = 'red' 
    MINUS 
    SELECT s2.sid 
    FROM sailors s2, boats b2, reserves r2 
  * WHERE s2.sid = r2.sid AND r2.bid = b2.bid AND b2.color = 'yellow';

SELECT s.sname 
    FROM sailors s, boats b, reserves r 
    WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red' 
    INTERSECT 
    SELECT s2.sname 
    FROM sailors s2, boats b2, reserves r2 
    WHERE s2.sid = r2.sid AND r2.bid = b2.bid AND b2.color = 'yellow';

