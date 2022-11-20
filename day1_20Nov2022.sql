CREATE DATABASE cust;

-- DROP DATABASE cust;

use cust;

-- DDL - Database Definition Language (CREATE, ALTER, DROP)
-- DML - Data Manipulation Language (INSERT, UPDATE, DELETE)
-- DCL - Data Control Language (Grant, Revoke)
-- TCL - Transaction control language ( COMMIT, ROLLBACK)
-- DQL - Data Query Language (SELECT)


-- CREATE A TABLE
CREATE TABLE IF NOT EXISTS customer(
custid INT,
custname VARCHAR(100),
gender CHAR(1),
age INT,
contact VARCHAR(15)     
);

-- DROP TABLE customer;

-- Data Types:
-- INT -> Store digit (10)
-- FLOAT,DECIMAL -> Store a decimal values(10.51)
-- CHAR -> to store string/character
-- VARCHAR -> Variable Character
-- DATE - Date 
-- BOOLEAN - True or False

SELECT * FROM customer;

-- INSERT DATA
INSERT INTO customer VALUES(1000,'Raghul Ramesh','M',40,'9876543211');
INSERT INTO customer VALUES(1001,'Malini Sekar','F',36,'9876543222');
INSERT INTO customer VALUES(1002,'Ashwin','M',17,'9897654322'),(1003,'Tharani','F',31,'9998765411'),(1004,'Bala','M',43,'9112345678');
INSERT INTO customer(custid,custname,gender,contact) VALUES(1005,'Rajesh','M','9811123456');

-- UPDATE DATA
SET SQL_SAFE_UPDATES=0;
UPDATE customer SET age=30 WHERE custid=1005;
UPDATE customer SET custname='Balamurugan',age=45 WHERE custid=1004;
UPDATE customer SET age=100 WHERE age<40;
UPDATE customer SET contact='9988776655' WHERE custid=1002;

-- DELETE DATA
DELETE FROM customer WHERE custid=1004;
DELETE FROM customer WHERE custid>1002;

-- SELECT 

CREATE TABLE employee(
emp_id INT,
empname VARCHAR(100),
experience INT,
city VARCHAR(20),
tech VARCHAR(100)
);

INSERT INTO employee VALUES(1,'Ranga',30,'Chennai','Data Engineer'),
						   (2,'Raj S',30,'Bangalore','SAP'),
						   (3,'Siva',29,'Hyderabad','Data Analytics'),
                           (4,'Kathir',27,'Chennai','Java'),
                           (5,'Aveek',25,'Bangalore','Spark'),
                           (6,'Levin',19,'Chennao','Java');
                           
SELECT * FROM employee;
UPDATE employee SET city='Chennai' WHERE emp_id=6;
SELECT * FROM employee;

SELECT empname,city,tech FROM employee;
SELECT * FROM employee WHERE city='Chennai';
SELECT * FROM employee WHERE city!='Chennai';

SELECT * FROM employee WHERE city='Chennai' AND tech='Java';

SELECT * FROM employee WHERE city='Chennai' or city='Bangalore';
select * from employee where city in ('Chennai','Bangalore');
select * from employee where city in ('Chennai','Bangalore') and tech='Java';
select * from employee where city not in ('Chennai','Bangalore');
SELECT * FROM employee;
SELECT * FROM employee WHERE experience<20;
SELECT * FROM employee WHERE experience>20;
SELECT * FROM employee WHERE experience>20 AND city='Bangalore';
SELECT * FROM employee ORDER BY experience;
SELECT * FROM employee ORDER BY experience DESC;

-- GROUP BY 
-- SELECT, FROM, WHERE, GROUP BY ,ORDER BY, HAVING
SELECT * FROM employee;
SELECT count(*) FROM employee;

SELECT city, count(*) FROM employee
GROUP BY city;


SELECT city, count(*) 
FROM employee
GROUP BY city
ORDER BY count(*) DESC;

SELECT city, count(*) 
FROM employee
GROUP BY city
HAVING count(*) > 1
ORDER BY count(*) DESC;

SELECT tech, count(*) 
FROM employee
GROUP BY tech
ORDER BY tech;

-- CONSTRAINTS

INSERT INTO employee VALUES(7,'Ramya',-5,'Chennai','MainFrame');
SELECT * FROM employee;
INSERT INTO employee VALUES(7,'Sakshi',5,'Pune','Python');

-- UNIQUE
-- NOT NULL
-- CHECK
-- DEFAULT
-- PRIMARY KEY
-- FOREIGN KEY

CREATE TABLE unique_table(
custid INT UNIQUE,
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100)
);

INSERT INTO unique_table VALUES(1000,'Rudhra','M',45,'Chennai');
SELECT * FROM unique_table;
INSERT INTO unique_table VALUES(1001,'Sairam','M',37,'Chennai');
INSERT INTO unique_table VALUES(1000,'Dinesh','M',39,'Bangalore');  -- Error due to duplicate custid
INSERT INTO unique_table VALUES(1002,'Dinesh','M',39,'Bangalore'); 
INSERT INTO unique_table VALUES(1003,'Dinesh','M',39,'Bangalore'); 

INSERT INTO unique_table(custname,gender,age,city) VALUES('Satya','F',33,'Hyderabad');
SELECT * FROM unique_table;
INSERT INTO unique_table(custname,gender,age,city) VALUES('Sawaswathi','F',36,'Chenani');

CREATE TABLE unique_table_new(
custid INT UNIQUE,
custname VARCHAR(100) UNIQUE,
gender CHAR(1),
age INT,
city VARCHAR(100)
);

INSERT INTO unique_table_new VALUES(1000,'Rudhra','M',45,'Chennai');
SELECT * FROM unique_table_new;
INSERT INTO unique_table_new VALUES(1001,'Sairam','M',37,'Chennai');
INSERT INTO unique_table_new VALUES(1000,'Dinesh','M',39,'Bangalore');  -- Error due to duplicate custid
INSERT INTO unique_table_new VALUES(1002,'Dinesh','M',39,'Bangalore'); 
INSERT INTO unique_table_new VALUES(1003,'Dinesh','M',39,'Bangalore');  -- Error due to duplicate custname

INSERT INTO unique_table_new(gender,age,city) VALUES('F',33,'Hyderabad');
SELECT * FROM unique_table_new;
INSERT INTO unique_table_new(custid,gender,age,city) VALUES(1003,'F',36,'Chenani');

-- NOT NULL
 create table notnull_table(
 custid INT NOT NULL,
 custname VARCHAR(100),
 gender CHAR(1),
 age INT,
 city VARCHAR(20)
 );
 
 INSERT INTO notnull_table VALUES(1000,'Ramkuamr','M',40,'Hyderabad'),
								(1001,'Siva Murugan','M',35,'Bangalore'),
                                (1002,'Ramya','F',37,'Chennai');
  INSERT INTO notnull_table VALUES(1000,'Prakash','M',40,'Delhi');
 SELECT * FROM notnull_table;
INSERT INTO notnull_table(custname,gender,age,city) VALUES('Satya','F',33,'Hyderabad');  -- Error , hence custid is null
INSERT INTO notnull_table(custid) VALUES(2000); 

 create table unique_notnull_table(
 custid INT UNIQUE NOT NULL,
 custname VARCHAR(100),
 gender CHAR(1),
 age INT,
 city VARCHAR(20)
 );
 
  INSERT INTO unique_notnull_table VALUES(1000,'Ramkuamr','M',40,'Hyderabad');
SELECT * FROM unique_notnull_table;
INSERT INTO unique_notnull_table VALUES(1000,'Prakash','M',40,'Delhi');  -- Error since custid is duplicate
INSERT INTO unique_notnull_table(custname,gender,age,city) VALUES('Prakash','M',40,'Delhi');  -- Error since custid is null
INSERT INTO unique_notnull_table VALUES(1001,'Prakash','M',40,'Delhi'); 
SELECT * FROM unique_notnull_table;

 create table notnull_table_new(
 custid INT UNIQUE NOT NULL,
 custname VARCHAR(100) NOT NULL,
 gender CHAR(1) NOT NULL,
 age INT NOT NULL,
 city VARCHAR(20) NOT NULL
 );
 
 INSERT INTO notnull_table_new VALUES(1000,'Raja','M',25,'Pune');
 INSERT INTO notnull_table_new VALUES(1000,'Raja','M',25,'Pune');  -- custid is a duplicate
 INSERT INTO notnull_table_new VALUES(1001,'Raja','M',25,'Pune');
 SELECT * FROM notnull_table_new;
INSERT INTO notnull_table_new(custid, custname,gender,city) VALUES(1002,'Mani','M','Pune');  -- Error since age is null here
  
-- CHECK 

CREATE TABLE check_table(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
city VARCHAR(100)
);

INSERT INTO check_table VALUES(1000,'Reena','F',25,'Chennai');
SELECT * FROM check_table;
INSERT INTO check_table VALUES(1001,'Bala','M',111,'Mumbai'); -- ERROR due to the age value is > 100
INSERT INTO check_table VALUES(1001,'Bala','M',-11,'Mumbai');  -- ERROR since age is less than 0
INSERT INTO check_table VALUES(1001,'Bala','M',50,'Mumbai');

CREATE TABLE check_table_new(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
city VARCHAR(100) CHECK ( city in ('Chennai','Bangalore','Hyderabad'))
);

INSERT INTO check_table_new VALUES(1000,'Deppika','F',30,'Bangalore');
SELECT * FROM check_table_new;
INSERT INTO check_table_new VALUES(1001,'Bala','M',50,'Mumbai'); -- Error due to the city value
INSERT INTO check_table_new VALUES(1001,'Bala','M',50,'Bangalore');
