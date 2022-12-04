use cust;

SELECT * FROM employee;

SHOW INDEX FROM employee;

SHOW CREATE TABLE employee;

SHOW INDEX FROM notnull_table;

SELECT * FROM notnull_table;
UPDATE notnull_table SET custid=1003 WHERE custname="Prakash";

CREATE INDEX cust_idx 
ON notnull_table(custid);
SELECT * FROM notnull_table WHERE custid=2000;

ALTER TABLE notnull_table
DROP INDEX cust_idx;

SELECT * FROM transaction_tbl;
CREATE INDEX trans_cust_idx ON transaction_tbl(transid,custid);
SHOW INDEX FROM transaction_tbl;
SELECT * FROM transaction_tbl WHERE transid>3 AND custid>1002;


-- NUMERIC FUNCTIONS
SELECT * FROM SURVEY;
SELECT MIN(salary) FROM survey;
SELECT * FROM survey WHERE salary=(SELECT min(salary) FROM survey);
SELECT MAX(salary) FROM survey;
SELECT SUM(salary) FROM survey;
SELECT AVG(salary) FROM survey;
SELECT COUNT(salary) FROM survey;
SELECT ROUND(AVG(salary),3) FROM survey;
SELECT GREATEST(50,70,25,33);
SELECT LEAST(50,70,25,33);
SELECT LOG(2,16);
SELECT LOG(10,1000);
SELECT LOG10(1000);
SELECT LOG2(32);
SELECT SIN(0);
SELECT SIN(90);
SELECT COS(0);
SELECT TAN(45);
SELECT POW(2,5);
SELECT PI();
SELECT PI()*POW(5,2) as area;
SELECT SQRT(121);

SELECT CEIL(55.1);
SELECT FLOOR(55.1);

SELECT EXP(2);
SELECT EXP(0);

SELECT ROUND(1.619121,2);
SELECT TRUNCATE(1.619121,2);



-- STRING FUNCTIONS
SELECT * FROM SURVEY;

SELECT company,place FROM survey;
SELECT CONCAT(company," - ",place) as info from survey;
SELECT CONCAT(company," - ",place," - ",country) as info from survey;
SELECT CONCAT_WS(" - ",company,place,country) as info FROM survey;

SELECT DISTINCT Place , LENGTH(Place) FROM survey;

SELECT DISTINCT UPPER(Place) FROM survey;
SELECT DISTINCT UPPER(Company) FROM survey;
SELECT DISTINCT LOWER(Company) FROM survey;

SELECT distinct UPPER(PLACE) FROM survey;
SELECT distinct SUBSTRING(UPPER(PLACE),1,3) FROM survey;
SELECT distinct SUBSTRING(UPPER(PLACE),3,3) FROM survey;

SELECT substring_index("www.excelr.com",".",1);
SELECT substring_index("www.excelr.com",".",2);
SELECT substring_index("www.excelr.com",".",3);

SELECT * FROM notnull_table;

SELECT * FROM notnull_table WHERE custname IS NOT NULL;

SELECT custname FROM notnull_table;
SELECT coalesce(custname,custid) FROM notnull_table;

SELECT * FROM notnull_table WHERE coalesce(custname,custid) IS NOT NULL;
SELECT * FROM notnull_table WHERE coalesce(custname,city) IS NOT NULL;
SELECT IFNULL(custname,"NOT PRESENT") as custname FROM notnull_table;

SELECT count(*) FROM notnull_table;
SELECT count(custid) FROM notnull_table;
SELECT count(custname) FROM notnull_table;

SELECT * FROM notnull_table;
SELECT custname,age,IF(age>=40,"SENIOR","JUNIOR") FROM notnull_table;

SELECT * FROM survey;
SELECT company, age, salary, IF(salary>7000,round(salary*1.5),salary*2) as revised_salary,place,country,gender 
FROM survey;

SELECT * FROM survey WHERE place LIKE "c%";
SELECT * FROM survey WHERE place LIKE "%a";
SELECT * FROM survey WHERE Place LIKE "%tta";
SELECT * FROM survey WHERE Place LIKE "%o%";
SELECT * FROM survey WHERE Place LIKE "_o%";
SELECT * FROM survey WHERE Place LIKE "__o%";
SELECT REPLACE('www.excelr.com','.','');
SELECT REPLACE('www.excelr.com','.','-');
SELECT reverse('EXCELR');
SELECT substring('EXCELR',1,3);
SELECT RIGHT('EXCELR',3);
SELECT RPAD(company,7,'_') FROM survey;
SELECT LPAD(company,7,'_') FROM survey;
SELECT LENGTH(TRIM(' CHENNAI '));
SELECT LENGTH(' CHENNAI ');
SELECT LENGTH(LTRIM(' CHENNAI '));
SELECT LENGTH(RTRIM(' CHENNAI '));
SELECT LENGTH(TRIM(' CHENNAI '));
SELECT LENGTH(TRIM('CHENNAI'));
SELECT company, salary FROM survey;
SELECT company, FORMAT(salary,0) FROM survey;
UPDATE survey SET salary=74684376 WHERE company='TCS';
SELECT company, FORMAT(salary,0) FROM survey;
UPDATE survey SET salary=7468437611 WHERE company='INFOSYS';
SELECT company, FORMAT(salary,0) FROM survey;

SELECT REPEAT("Selenium",3);

-- DATE 

CREATE TABLE date_function_tbl(
custid INT,
custname VARCHAR(100),
registered_date TIMESTAMP
);

INSERT INTO date_function_tbl VALUES(1,'Rajkumar',current_timestamp());
SELECT * FROM date_function_tbl;
INSERT INTO date_function_tbl VALUES(2,'Raja','2022-12-01 10:00:00'),
(3,'Sundar','2022-12-02 10:00:00'),(4,'Prem','2022-01-01 10:00:00'),(5,'Bala','2000-12-01 10:00:00'),
(6,'Sudhan','2000-01-01 10:00:00'),(7,'Vinoth','2022-12-03 10:00:00'),(8,'Shovin','2022-12-03 11:11:00');

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
SELECT current_timestamp();

SELECT * FROM date_function_tbl WHERE substring(registered_date,1,4)=2000;
SELECT * FROM date_function_tbl WHERE year(registered_date)=2000;
SELECT custid,custname,registered_date,year(registered_date) as reg_year FROM date_function_tbl ;
SELECT custid,custname,registered_date,month(registered_date) as reg_month FROM date_function_tbl ;
SELECT custid,custname,registered_date,day(registered_date) as reg_day FROM date_function_tbl ;
SELECT custid,custname,registered_date,date(registered_date) as reg_date FROM date_function_tbl ;
SELECT custid,custname,registered_date,time(registered_date) as reg_time FROM date_function_tbl ;
SELECT custid,custname,registered_date,hour(registered_date) as reg_hour FROM date_function_tbl ;
SELECT custid,custname,registered_date,minute(registered_date) as reg_minute FROM date_function_tbl ;

-- %a -Weekday in abbreviated name (Sun, Mon .. Sat)
-- %W - Weekday full name  (Sunday, Monday...Saturday)
-- %b - Abbreviated month name (Jan, Feb,...Dec)
-- %M - Months full name (January, February...December)
-- %d  - day of month (1,2,3...31)
-- %D - day of month with eng suffix (1st, 2nd, 3rd...31st)
-- %m - month in numeric (1,2,3...12)
-- %y - year in 2 digit (22,23...)
-- %Y - year in 4 digit (2022, 2023...)
-- %H - hour (00..23)
-- %I - hour in 12 hours format(00..12)
-- %p  - AM | PM
-- %i - Minutes (00..59)
-- %S - Seconds (00..59)



SELECT custid,custname,registered_date,dayname(registered_date) as reg_day FROM date_function_tbl ;
SELECT custid,custname,registered_date,monthname(registered_date) as reg_month FROM date_function_tbl ;
SELECT custid,custname,registered_date,dayofyear(registered_date) as reg_dayofyear FROM date_function_tbl ;

SELECT registered_date,DATE_FORMAT(registered_date,'%m/%d/%Y') as usa_date FROM date_function_tbl;
SELECT registered_date,DATE_FORMAT(registered_date,'%b/%d/%Y %H:%i') as usa_date FROM date_function_tbl;
SELECT registered_date,DATE_FORMAT(registered_date,'%b/%d/%Y %I:%i %p') as usa_date FROM date_function_tbl;

SELECT DATE_FORMAT(current_timestamp(),'%d-%m-%Y %I:%i:%s %p') as cur_date ;

SELECT DATE_FORMAT(current_timestamp(),'%A,%D %M,%Y') as cur_date ;
