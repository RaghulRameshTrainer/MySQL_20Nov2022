use cust;

SELECT * FROM employee;

START TRANSACTION;
UPDATE employee SET salary=150000;
ROLLBACK;


START TRANSACTION;
UPDATE employee SET salary=150000 WHERE empid=1;
COMMIT;

START TRANSACTION;
UPDATE employee SET salary=100000 WHERE empid=4;

SAVEPOINT excelr;
INSERT INTO employee VALUES(0,'ajith',1,6);
ROLLBACK TO SAVEPOINT excelr;
COMMIT;


START TRANSACTION;
SELECT * FROM employee;
INSERT INTO employee VALUES(10,'Ajith',500000,3);

SAVEPOINT upd_salary;
UPDATE employee SET salary=100000 WHERE empid=7;

SAVEPOINT upd_mgr;
UPDATE employee SET manager_id=3 WHERE empid=1;
ROLLBACK TO SAVEPOINT upd_mgr;

RELEASE SAVEPOINT upd_salary;
-- ROLLBACK;
COMMIT;

-- SELECT COALESCE(empid,empname,salary,manager_id) FROM employee WHERE empid=5;
-- SELECT IFNULL(empid,empname) FROM employee WHERE empid=5;

-- DDL , DML , DQL , TCL, DCL
-- SELECT
-- INSERT
-- UPDATE
-- DELETE
-- GRANT
-- INDEX
-- ALL

GRANT SELECT ON customer TO root@localhost;
GRANT SELECT,INSERT,UPDATE,DELETE ON customer TO root@localhost;
GRANT SELECT ON customer TO root@localhost;
GRANT ALL ON CUSTOMER TO root@localhost;
REVOKE DELETE ON CUSTOMER FROM root@localhost;
REVOKE SELECT,UPDATE,INSERT,INDEX ON CUSTOMER FROM root@localhost;


-- PLSQL (Programming Language SQL)

