use cust;

SELECT * FROM employee;

SELECT * FROM employee WHERE experience<25;
SELECT * FROM employee WHERE experience>=25;

SELECT * 
FROM employee
WHERE experience>0;

SELECT count(*) 
FROM employee
WHERE experience>0;


SELECT city,count(*) 
FROM employee
WHERE experience>0
GROUP BY city;

SELECT city,count(*) 
FROM employee
WHERE experience>0
GROUP BY city
HAVING count(*)>1;

SELECT city,count(*) 
FROM employee 
WHERE experience>0
group by city
having count(*)>1
ORDER BY count(*);


SELECT * FROM survey;
SELECT ROUND(AVG(salary)) FROM survey;
SET SQL_SAFE_UPDATES=0;
UPDATE survey SET Salary=4305 WHERE salary='';
UPDATE survey SET place='Chennai' WHERE place='';
UPDATE survey SET company='TCS' WHERE company='Tata Consultancy Services';
UPDATE survey SET company='Infosys' WHERE company='Infosys Pvt Lmt';
UPDATE survey SET company='CTS' WHERE company='Congnizant';
UPDATE survey SET company='Infosys' WHERE company='';



-- ================================================
-- Get the number of employees from each company
select company,count(*) 
from survey
group by company;

-- Get the sum of salary paid by each company
select company,sum(salary) from survey
group by company;

-- Get the max salary paid by each company
select company, max(salary) from survey
group by company;

-- get the number of employees in each company and city wise
select company,place,count(*)
from survey
group by company,place
order by Company,Place;


-- DEFAULT constraint

CREATE TABLE default_table(
custid INT ,
custname VARCHAR(100),
gender CHAR(1),
age INT ,
city VARCHAR(100) DEFAULT 'Bangalore' 
);

INSERT INTO default_table VALUES(1000,'Vijay','M',47,'Chennai');
SELECT * FROM default_table;
INSERT INTO default_table(custid,custname,gender,age) VALUES(1001,'Lakshmi','F',30);

-- PRIMARY KEY
create table primary_key_table(
empid INT PRIMARY KEY,                     -- SIMPLE primary key
empname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100) DEFAULT 'Mysore');

INSERT INTO primary_key_table VALUES(1000,'Rajesh','M',38,'Chennai');
SELECT * FROM primary_key_table;
INSERT INTO primary_key_table VALUES(1001,'Saravanan','M',25,'Bangalore');
INSERT INTO primary_key_table(empname,gender,age,city) VALUES('Sakthivel','M',35,'Bangalore');  -- ERROR
INSERT INTO primary_key_table(empid,empname,gender,age,city) VALUES(1002,'Sakthivel','M',35,'Bangalore');

create table composite_primary_key_table(
empid INT,                     
empname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100) DEFAULT 'Mysore',
CONSTRAINT pk_empid_name PRIMARY KEY(empid,empname)   -- composite primary key
);

INSERT INTO composite_primary_key_table VALUES(1000,'Rajesh','M',38,'Chennai');
SELECT * FROM composite_primary_key_table;
INSERT INTO composite_primary_key_table VALUES(1000,'Saravanan','M',25,'Bangalore');
INSERT INTO composite_primary_key_table VALUES(1001,'Saravanan','M',25,'Bangalore');
INSERT INTO composite_primary_key_table VALUES(1000,'Rajesh','M',30,'Pune'); -- ERROR

INSERT INTO composite_primary_key_table(empname,gender,age,city) VALUES('Sakthivel','M',35,'Bangalore');  -- ERROR
INSERT INTO composite_primary_key_table(empid,empname,gender,age,city) VALUES(1002,'Sakthivel','M',35,'Bangalore');

-- FOREIGN KEY
create table customer_tbl(
custid INT PRIMARY KEY,                     -- SIMPLE primary key
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100) DEFAULT 'Mysore');

INSERT INTO customer_tbl VALUES(1000,'Rajesh','M',38,'Chennai');
SELECT * FROM customer_tbl;
INSERT INTO customer_tbl VALUES(1001,'Saravanan','M',25,'Bangalore');
INSERT INTO customer_tbl(empname,gender,age,city) VALUES('Sakthivel','M',35,'Bangalore');  -- ERROR
INSERT INTO customer_tbl(custid,custname,gender,age,city) VALUES(1002,'Sakthivel','M',35,'Bangalore');



CREATE TABLE transaction_tbl(
transid INT PRIMARY KEY ,
custid INT,
product VARCHAR(100),
amount DECIMAL(20,2),
order_date DATE,
FOREIGN KEY(custid) REFERENCES customer_tbl(custid) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO transaction_tbl VALUES(1,1000,'Tv',70000,current_date());
SELECT * FROM transaction_tbl;
INSERT INTO transaction_tbl VALUES(2,1002,'Laptop',75000,'2022-11-25');
INSERT INTO transaction_tbl VALUES(3,1010,'Desktop',50000,'2022-11-20');
INSERT INTO transaction_tbl(transid,product,amount,order_date) VALUES(3,'Laptop',75000,'2022-11-25');
INSERT INTO transaction_tbl(transid,product,amount,order_date) VALUES(4,'Pendrive',7000,'2022-11-25');
INSERT INTO transaction_tbl VALUES(5,1003,'Washing Machine',55000,'2022-11-25');

DESC transaction_tbl;

SELECT * FROM transaction_tbl;
UPDATE customer_tbl SET custid=1003 WHERE custid=1002;

DELETE FROM customer_tbl WHERE custid=1000;


-- ====================== ALTER TABLE STATEMENT ==================================

DESC customer;

-- Add a column
SELECT * FROM CUSTOMER;

ALTER TABLE CUSTOMER 
ADD COLUMN city VARCHAR(100) DEFAULT 'CHENNAI';

ALTER TABLE CUSTOMER
ADD COLUMN country VARCHAR(25);

SELECT * FROM CUSTOMER;


-- Remove a column
ALTER TABLE customer
DROP COLUMN contact;

-- RENAME THE COLUMN
ALTER TABLE CUSTOMER
RENAME column gender TO sex;

DESC customer;

SELECT * FROM CUSTOMER;

-- Rename The table
RENAME TABLE customer TO user_tbl;

RENAME TABLE user_tbl TO CUSTOMER;

-- Modify column
ALTER TABLE customer
MODIFY column custname varchar(50);

DESC customer;

ALTER TABLE customer 
MODIFY COLUMN custid INT PRIMARY KEY;

DESC customer;

ALTER TABLE customer 
MODIFY COLUMN custname VARCHAR(50) NOT NULL;


ALTER TABLE customer 
MODIFY COLUMN age INT CHECK(age>0 and age<=100);

SHOW CREATE TABLE customer;

ALTER TABLE CUSTOMER
DROP CONSTRAINT customer_chk_1;

ALTER TABLE CUSTOMER
MODIFY COLUMN age INT CHECK(age>0 AND age<=100);

SELECT * FROM customer;



-- AUTO INCREMENT (SEQUENCE)

CREATE TABLE employee_table(
empid INT UNIQUE AUTO_INCREMENT,
empname VARCHAR(100),
gender CHAR(1),
city VARCHAR(100)
);

INSERT INTO employee_table(empname,gender,city) VALUES('Prakash','M','Hyderabad');
SELECT * FROM employee_table;
INSERT INTO employee_table(empname,gender,city) VALUES('Priya','F','Pune');
INSERT INTO employee_table(empname,gender,city) VALUES('Malini','F','Bangalore');

INSERT INTO employee_table VALUES(100,'Ashwin','M','Chennai');
SELECT * FROM employee_table;
INSERT INTO employee_table(empname,gender,city) VALUES('Tharani','F','Bangalore');

DELETE FROM employee_table WHERE empid>=100;
INSERT INTO employee_table(empname,gender,city) VALUES('Tharani','F','Bangalore');



