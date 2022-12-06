-- create

CREATE TABLE students ( 
  id INTEGER PRIMARY KEY, 
  name TEXT NOT NULL, 
  age INTEGER, 
  group_name TEXT 
); 

CREATE TABLE groups (
  name TEXT,
  created TEXT
);

INSERT INTO students VALUES (1, "Clark", 25, "Alfa"); 
INSERT INTO students VALUES (2, "Dave", 37, "Beta"); 
INSERT INTO students VALUES (3, "Ava", 48, "Alfa"); 

-- insert 

INSERT INTO groups VALUES ("Alfa", "2020"); 
INSERT INTO groups VALUES ("Beta", "2021"); 

-- fetch 
SELECT * FROM students 
INNER JOIN groups 
ON students.group_name = groups.name;