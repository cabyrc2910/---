
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Андрей', '30', 'Волгоград');
INSERT INTO EMPLOYEE VALUES (0002, 'Николай', '40','Москва');
INSERT INTO EMPLOYEE VALUES (0003, 'Виктор', '45', 'Москва');
INSERT INTO EMPLOYEE VALUES (0004, 'Алексей', '60', 'Волгоград');

-- fetch 
SELECT * FROM EMPLOYEE WHERE empId = '0002';
SELECT * FROM EMPLOYEE WHERE age = '30';
SELECT * FROM EMPLOYEE WHERE name = 'Виктор';
SELECT * FROM EMPLOYEE WHERE address  = 'Москва';