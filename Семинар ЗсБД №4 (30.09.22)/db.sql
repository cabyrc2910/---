CREATE TABLE students ( 
  id INTEGER PRIMARY KEY, 
  name TEXT NOT NULL, 
  age INTEGER
); 

INSERT INTO students VALUES (1, "Clark", 25); 
INSERT INTO students VALUES (2, "Dave", 37); 
INSERT INTO students VALUES (3, "Ava", 48); 

SELECT * FROM students WHERE age > 26;
