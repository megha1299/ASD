CREATE TABLE Department(
    code INT PRIMARY KEY NOT NULL,
    title VARCHAR(30),
    dept_name VARCHAR(30) UNIQUE NOT NULL,
    dept_id INT UNIQUE NOT NULL,
    salary INT,
    CHECK (salary > 2000 )
);

INSERT INTO Department(code, title, dept_name, dept_id,salary) 
VALUES (221, "Engineering", "Electronics and communication", 100, 20000);

CREATE TABLE Instructor(
    name VARCHAR(50) NOT NULL,
    code INT NOT NULL,
    id INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(name, code)
VALUES ("Meenu", 007);
