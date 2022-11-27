use cust;

RENAME TABLE customer to customer_1;
RENAME TABLE transaction_tbl TO transaction_tbl1;

CREATE TABLE CUSTOMER(
custid INT UNIQUE,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO CUSTOMER VALUES(1000,'Raghul Ramesh','Chennai');
INSERT INTO CUSTOMER VALUES(1001,'SivaMurugan','Bangalore');
INSERT INTO CUSTOMER VALUES(1002,'Venkatesh Babu','Hyderabad');
INSERT INTO CUSTOMER VALUES(1003,'Chandra','Pune');
INSERT INTO CUSTOMER VALUES(1004,'Aveek','Delhi');
INSERT INTO CUSTOMER VALUES(1005,'Rajini','Bangalore');

SELECT * FROM CUSTOMER;

CREATE TABLE TRANSACTION_TBL(
transid INT PRIMARY KEY,
custid INT,
prodname VARCHAR(100),
amount INT
);


INSERT INTO TRANSACTION_TBL VALUES(1,1000,'Mobile',50000);
INSERT INTO TRANSACTION_TBL VALUES(2,1000,'Laptop',70000);
INSERT INTO TRANSACTION_TBL VALUES(3,1001,'TV',65000);
INSERT INTO TRANSACTION_TBL VALUES(4,1002,'Fridge',50000);
INSERT INTO TRANSACTION_TBL VALUES(5,1003,'WashingMachine',55000);
INSERT INTO TRANSACTION_TBL VALUES(6,1002,'Desktop',60000);
INSERT INTO TRANSACTION_TBL VALUES(7,1000,'Charger',3000);
INSERT INTO TRANSACTION_TBL VALUES(8,1004,'Toys',2000);
INSERT INTO TRANSACTION_TBL VALUES(9,1002,'Snacks',1000);
INSERT INTO TRANSACTION_TBL VALUES(10,1001,'Laptop',220000);
INSERT INTO TRANSACTION_TBL VALUES(11,1100,'Chairs',5000);

SELECT * FROM TRANSACTION_TBL;

-- INNER JOIN
SELECT c.custid,c.custname,c.city,t.prodname,t.amount FROM CUSTOMER c JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- LEFT JOIN
SELECT * FROM CUSTOMER c LEFT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- RIGHT JOIN
SELECT * FROM CUSTOMER c RIGHT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- FULL JOIN
SELECT * FROM CUSTOMER FULL JOIN TRANSACTION_TBL ;


SELECT c.* FROM customer c LEFT JOIN TRANSACTION_TBL t ON c.custid=t.custid WHERE t.custid is NULL;


SELECT c.custname,sum(t.amount)
FROM customer c JOIN transaction_tbl t
ON c.custid=t.custid
group by c.custname;

-- SELF JOIN

RENAME TABLE employee TO employee1;

CREATE TABLE employee(
empid INT PRIMARY KEY,
empname VARCHAR(100),
salary INT,
manager_id int,
FOREIGN KEY(manager_id) REFERENCES employee(empid)
);

INSERT INTO employee VALUES(1,'Raja',100000,1),
							(2,'Priya',125000,1),
                            (3,'Durga',200000,1),
                            (4,'Satya',75000,1),
							(5,'Prabha',300000,3),
                            (6,'Bala',150000,3),
                            (7,'Kathir',50000,3),
                            (8,'Karthik',90000,6),
                            (9,'Sreekanth',100000,6);
                            
SELECT e.empname, e.salary as employee_sal , m.salary as manager_sal FROM employee e , employee m
WHERE e.manager_id=m.empid
AND e.salary>m.salary;


-- SUB QUERY

SELECT * FROM CUSTOMER;
SELECT * FROM TRANSACTION_TBL;

SELECT * FROM CUSTOMER WHERE CUSTID IN (
SELECT CUSTID FROM TRANSACTION_TBL);

SELECT * FROM CUSTOMER WHERE CUSTID NOT IN (
SELECT CUSTID FROM TRANSACTION_TBL);

SELECT * FROM CUSTOMER WHERE CUSTID=(
SELECT CUSTID FROM TRANSACTION_TBL WHERE amount = ( 
SELECT max(amount) FROM TRANSACTION_TBL
)
);

-- GET THE CUSTOMER DETAILS WHO DID THE TRANSACTION FOR ABOVE AVERAGE TRANSACTED AMOUNT;
-- LIST THE CUSTOMER WHO ARE PURCHASED THE LAPTOP

-- CASE STATEMENT

SELECT * FROM CUSTOMER;

SELECT custname, city , CASE
						WHEN city='Chennai' THEN 'Tamil'
                        WHEN city='Bangalore' THEN 'Kannadam'
                        WHEN city='Hyderabad' THEN 'Telugu'
                        WHEN city IN ('Pune','Delhi') THEN 'Hindi'
                        ELSE 'English'
                        END as langauge
FROM CUSTOMER;




SELECT custname, city , CASE
						WHEN city='Chennai' THEN 'Tamil'
                        WHEN city='Bangalore' THEN 'Kannadam'
                        WHEN city='Hyderabad' THEN 'Telugu'
                        WHEN city IN ('Pune') THEN 'Hindi'
                        ELSE 'English'
                        END as langauge
FROM CUSTOMER;

SELECT * FROM TRANSACTION_TBL;

SELECT custid, prodname,amount, CASE
			WHEN amount>(SELECT avg(amount) FROM transaction_tbl) THEN 'Above average amount'
            ELSE 'Below average amount'
            END as comment
            FROM transaction_tbl;
            
            
            
CREATE TABLE users(
id INT,
name VARCHAR(100),
gender CHAR(1)
);

INSERT INTO users VALUES (1,'Siva','F'),
						(2,'Priya','M'),
						(3,'Bala','F'),
						(4,'Raja','F'),
						(5,'Vijay','F'),
                        (6,'Ramya','M'),
                        (7,'Karthik','F'),
                        (8,'Harhsa','M'),
                        (9,'Shivani','M'),
                        (10,'Tharani','M');
                        
SELECT * FROM users;

SET SQL_SAFE_UPDATES=0;

UPDATE users SET gender=CASE
	WHEN gender='M' THEN 'F'
    ELSE 'M' END;
    
CREATE TABLE high_transaction_tbl AS                                
SELECT * FROM TRANSACTION_TBL WHERE amount>50000;

SELECT * FROM high_transaction_tbl;

SELECT c.*,t.* FROM CUSTOMER c
INNER JOIN transaction_tbl t ON c.custid=t.custid
INNER JOIN high_transaction_tbl h ON c.custid=h.custid;


-- DELETE DROP TRUNCATE

SELECT * FROM employee_table;

DELETE FROM employee_table;
TRUNCATE table employee_table;
DROP table employee_table;

START TRANSACTION;
DELETE FROM employee_table;
ROLLBACK;


START TRANSACTION;
TRUNCATE TABLE employee_table;
ROLLBACK;

SELECT * FROM unique_table_new;

START TRANSACTION;
DROP TABLE unique_table_new;
ROLLBACK;

-- VIEW

CREATE OR REPLACE VIEW cust_trans AS
SELECT custname,prodname, amount FROM CUSTOMER c JOIN TRANSACTION_TBL t ON c.custid=t.custid;

SELECT * FROM cust_trans;    # Virtaul table and does not store the data as like table

SELECT * from cust_trans WHERE amount<10000;
