REM   Script: 04122022
REM   04122022

DECLARE 
    message varchar2(20) := 'Hello World!'; 
BEGIN 
    dbms_output.put_line(message); 
END; 
/

DECLARE 
    message varchar2(20) := 'Hello World!'; 
BEGIN 
    test_msg VARCHAR2(100) := 'PLSQL PROGRAMMING LANGUAGE!'; 
    dbms_output.put_line(message); 
    dbms_output.put_line(test_msg); 
END; 
/

DECLARE 
    message varchar2(20) := 'Hello World!'; 
    test_msg VARCHAR2(100) := 'PLSQL PROGRAMMING LANGUAGE!'; 
 
BEGIN 
    dbms_output.put_line(message); 
    dbms_output.put_line(test_msg); 
END; 
/

DECLARE 
    message varchar2(20) := 'Hello World!'; 
    test_msg VARCHAR2(100) := 'PLSQL PROGRAMMING LANGUAGE!'; 
BEGIN 
    res := 10 + 20; 
    dbms_output.put_line(message); 
    dbms_output.put_line(test_msg); 
END; 
/

DECLARE 
    message varchar2(20) := 'Hello World!'; 
    test_msg VARCHAR2(100) := 'PLSQL PROGRAMMING LANGUAGE!'; 
    res INTEGER; 
BEGIN 
    res := 10 + 20; 
    dbms_output.put_line(message); 
    dbms_output.put_line(test_msg); 
END; 
/

DECLARE 
    x integer := 10; 
BEGIN 
    IF ( x == 10) THEN 
        dbms_output.put_line('x is 10'); 
    END IF; 
    dbms_output.put_line('x is :'|| x); 
END; 
/

DECLARE 
    x integer := 10; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    END IF; 
    dbms_output.put_line('x is :'|| x); 
END; 
/

DECLARE 
    x integer := 100; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    END IF; 
    dbms_output.put_line('x is :'|| x); 
END; 
/

DECLARE 
    x integer := 100; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    ELSE 
        dbms_output.put_line('x is not 10'); 
    END IF; 
    dbms_output.put_line('x is :'|| x); 
END; 
/

DECLARE 
    x integer := 100; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    ELSE 
        dbms_output.put_line('x is not 10'); 
    END IF; 
    dbms_output.put_line('x is : '|| x); 
END; 
/

DECLARE 
    x integer := 20; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    ELSIF ( x = 20) THEN 
        dbms_output.put_line('x is 20'); 
    ELSIF ( x = 30) THEN 
        dbms_output.put_line('x is 40'); 
    ELSIF ( x = 40) THEN 
        dbms_output.put_line('x is 40'); 
    ELSE 
        dbms_output.put_line('x is not 10'); 
    END IF; 
END; 
/

DECLARE 
    x integer := 50; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    ELSIF ( x = 20) THEN 
        dbms_output.put_line('x is 20'); 
    ELSIF ( x = 30) THEN 
        dbms_output.put_line('x is 40'); 
    ELSIF ( x = 40) THEN 
        dbms_output.put_line('x is 40'); 
    ELSE 
        dbms_output.put_line('x is not 10 or 20 or 30 or 40. It is : ' || x); 
    END IF; 
END; 
/

DECLARE 
    x integer := 500; 
BEGIN 
    IF ( x = 10) THEN 
        dbms_output.put_line('x is 10'); 
    ELSIF ( x = 20) THEN 
        dbms_output.put_line('x is 20'); 
    ELSIF ( x = 30) THEN 
        dbms_output.put_line('x is 40'); 
    ELSIF ( x = 40) THEN 
        dbms_output.put_line('x is 40'); 
    ELSE 
        dbms_output.put_line('x is not 10 or 20 or 30 or 40. It is : ' || x); 
    END IF; 
END; 
/

DECLARE 
    grade CHAR(1) := 'A'; 
BEGIN 
    CASE 
        WHEN grade = 'A' THEN dbms_output.put_line('Excellent'); 
        WHEN grade = 'B' THEN dbms_output.put_line('Very Good'); 
        WHEN grade = 'C' THEN dbms_output.put_line('Good'); 
        WHEN grade = 'D' THEN dbms_output.put_line('Need an improvement'); 
        ELSE dbms_output.put_line('No Such Grade!'); 
    END CASE; 
END; 
/

DECLARE 
    grade CHAR(1) := 'B'; 
BEGIN 
    CASE 
        WHEN grade = 'A' THEN dbms_output.put_line('Excellent'); 
        WHEN grade = 'B' THEN dbms_output.put_line('Very Good'); 
        WHEN grade = 'C' THEN dbms_output.put_line('Good'); 
        WHEN grade = 'D' THEN dbms_output.put_line('Need an improvement'); 
        ELSE dbms_output.put_line('No Such Grade!'); 
    END CASE; 
END; 
/

DECLARE 
    grade CHAR(1) := 'E'; 
BEGIN 
    CASE 
        WHEN grade = 'A' THEN dbms_output.put_line('Excellent'); 
        WHEN grade = 'B' THEN dbms_output.put_line('Very Good'); 
        WHEN grade = 'C' THEN dbms_output.put_line('Good'); 
        WHEN grade = 'D' THEN dbms_output.put_line('Need an improvement'); 
        ELSE dbms_output.put_line('No Such Grade!'); 
    END CASE; 
END; 
/

DECLARE 
    grade CHAR(1) := 'E'; 
BEGIN 
    CASE 
        WHEN grade = 'A' THEN dbms_output.put_line('Excellent'); 
        WHEN grade = 'B' THEN dbms_output.put_line('Very Good'); 
        WHEN grade = 'C' THEN dbms_output.put_line('Good'); 
        WHEN grade = 'D' THEN dbms_output.put_line('Need an improvement'); 
        ELSE dbms_output.put_line('No Such Grade! : '||grade); 
    END CASE; 
END; 
/

DECLARE 
    country varchar2(100) := 'India'; 
    age INTEGER := 30; 
BEGIN 
    IF (country = 'India') THEN 
        IF (age >= 18) THEN 
            dbms_output.put_line('You can vote!'); 
        ELSE: 
            dbms_output.put_line('You cannot vote!'); 
        END IF; 
    ELSE: 
        dbms_output.put_line('Please follow your country : '|| country || ' Standards.'); 
    END IF; 
END; 
/

DECLARE 
    country varchar2(100) := 'India'; 
    age INTEGER := 30; 
BEGIN 
    IF (country = 'India') THEN 
        IF (age >= 18) THEN 
            dbms_output.put_line('You can vote!'); 
        ELSE 
            dbms_output.put_line('You cannot vote!'); 
        END IF; 
    ELSE 
        dbms_output.put_line('Please follow your country : '|| country || ' Standards.'); 
    END IF; 
END; 
/

DECLARE 
    country varchar2(100) := 'India'; 
    age INTEGER := 10; 
BEGIN 
    IF (country = 'India') THEN 
        IF (age >= 18) THEN 
            dbms_output.put_line('You can vote!'); 
        ELSE 
            dbms_output.put_line('You cannot vote!'); 
        END IF; 
    ELSE 
        dbms_output.put_line('Please follow your country : '|| country || ' Standards.'); 
    END IF; 
END; 
/

DECLARE 
    country varchar2(100) := 'Canada'; 
    age INTEGER := 30; 
BEGIN 
    IF (country = 'India') THEN 
        IF (age >= 18) THEN 
            dbms_output.put_line('You can vote!'); 
        ELSE 
            dbms_output.put_line('You cannot vote!'); 
        END IF; 
    ELSE 
        dbms_output.put_line('Please follow your country : '|| country || ' Standards.'); 
    END IF; 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : ' || x); 
        x := x + 1; 
        IF x > 10 THEN 
            exit; 
        END IF; 
    END LOOP; 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : ' || x); 
        x := x + 2; 
        IF x > 10 THEN 
            exit; 
        END IF; 
    END LOOP; 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : ' || x); 
        x := x + 1; 
        exit WHEN x>10; 
    END LOOP; 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : ' || x); 
        x := x + 1; 
        exit WHEN x>10; 
    END LOOP; 
        DBMS_OUTPUT.PUT_LINE('After Exit x is :' || x) 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : ' || x); 
        x := x + 1; 
        exit WHEN x>10; 
    END LOOP; 
        DBMS_OUTPUT.PUT_LINE('After Exit x is :' || x); 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    WHILE x <= 10 LOOP 
        DBMS_OUTOUT.PUT_LINE('x is : '|| x); 
        x := x + 1; 
    END LOOP; 
END; 
/

DECLARE 
    x integer := 0; 
BEGIN 
    WHILE x <= 10 LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : '|| x); 
        x := x + 1; 
    END LOOP; 
END; 
/

DECLARE 
    x integer := 10; 
BEGIN 
    WHILE x >= 1 LOOP 
        DBMS_OUTPUT.PUT_LINE('x is : '|| x); 
        x := x - 1; 
    END LOOP; 
END; 
/

DECLARE 
    x INTEGER; 
BEGIN 
    FOR x IN 1 .. 10 LOOP 
        DBMS_OUTPUT.PUT_LINE(' Value of x is : ' || x); 
END; 
/

DECLARE 
    x INTEGER; 
BEGIN 
    FOR x IN 1 .. 10 LOOP 
        DBMS_OUTPUT.PUT_LINE(' Value of x is : ' || x); 
    END LOOP; 
END; 
/

DECLARE 
    x INTEGER; 
BEGIN 
    FOR x IN REVERSE 1 .. 10 LOOP 
        DBMS_OUTPUT.PUT_LINE(' Value of x is : ' || x); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| name(i) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

CREATE OR REPLACE PROCEDURE welcome 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Welcome to PLSQL World!'); 
END; 
/

EXECUTE welcome


DECLARE 
    x INTEGER; 
BEGIN 
    FOR x IN 1 .. 10 LOOP 
        DBMS_OUTPUT.PUT_LINE(' Value of x is : ' || x); 
    END LOOP; 
END; 
/

BEGIN 
    welcome; 
END; 
/

DROP PROCEDURE welcome;

EXECUTE welcome


DECLARE 
    a INTEGER; 
    b INTEGER; 
    c INTEGER; 
PROCEDURE findMax(x IN integer, y IN integer, z OUT INTEGER) IS 
BEGIN 
    IF x > y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
BEGIN 
    a := 50; 
    b := 60; 
    findMax(a,b,c); 
    DBMS_OUTPUT.PUT_LINE('Maximum of (50 , 60) is : '|| c); 
END; 
/

DECLARE 
    a INTEGER; 
    b INTEGER; 
    c INTEGER; 
PROCEDURE findMax(x IN integer, y IN integer, z OUT INTEGER) IS 
BEGIN 
    IF x > y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
END; 
BEGIN 
    a := 500; 
    b := 160; 
    findMax(a,b,c); 
    DBMS_OUTPUT.PUT_LINE('Maximum of (500 , 160) is : '|| c); 
END; 
/

DECLARE 
    a integer; 
PROCEDURE squareNum(x IN OUT integer) IS 
BEGIN 
    x := x * x; 
END; 
BEGIN 
    a := 10; 
    squareNum(a); 
     DBMS_OUTPUT.PUT_LINE('Squage of 10 is : '|| a); 
END; 
/

DECLARE 
    a integer; 
PROCEDURE squareNum(x IN OUT integer) IS 
BEGIN 
    x := x * x; 
END; 
BEGIN 
    a := 37; 
    squareNum(a); 
     DBMS_OUTPUT.PUT_LINE('Squage of 10 is : '|| a); 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name(1) := 'Raja'; 
    name(2) := 'Raja'; 
    name(3) := 'Raja'; 
    name(4) := 'Raja'; 
    name(5) := 'Raja'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name[1] := 'Raja'; 
    name[2] := 'Ranjitha'; 
    name[3] := 'Ram'; 
    name[4] := 'Ramya'; 
    name[5] := 'Bala'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name [1] := 'Raja'; 
    name [2] := 'Ranjitha'; 
    name [3] := 'Ram'; 
    name [4] := 'Ramya'; 
    name [5] := 'Bala'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name [0] := 'Raja'; 
    name [1] := 'Ranjitha'; 
    name [2] := 'Ram'; 
    name [3] := 'Ramya'; 
    name [4] := 'Bala'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name[0] := 'Raja'; 
    name[1] := 'Ranjitha'; 
    name[2] := 'Ram'; 
    name[3] := 'Ramya'; 
    name[4] := 'Bala'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

DECLARE 
    type namesarray IS VARRAY(5) OF VARCHAR2(100); 
    type marks IS  VARRAY(5) OF INTEGER; 
    name namesarray; 
    mark marks; 
    total integer; 
     
BEGIN 
    -- name := namesarray('Raja','Ranjitha','Ram','Ramya','Bala'); 
    mark := marks(100,95,90,85,80); 
    name[1] := 'Raja'; 
    name[2] := 'Ranjitha'; 
    name[3] := 'Ram'; 
    name[4] := 'Ramya'; 
    name[4] := 'Bala'; 
    total := name.count; 
    DBMS_OUTPUT.PUT_LINE('Totally ' || total || ' Students'); 
     
    FOR i IN 1 .. total LOOP 
         DBMS_OUTPUT.PUT_LINE('Student Name : '|| UPPER(name(i)) ||', Mark : ' || mark(i)); 
    END LOOP; 
END; 
/

CREATE OR REPLACE PROCEDURE welcome 
AS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Welcome to PLSQL World!'); 
END; 
/

DECLARE 
    a integer; 
PROCEDURE squareNum(x IN OUT integer) IS 
BEGIN 
    x := x * x; 
END; 
BEGIN 
    a := 37; 
    welcome; 
    squareNum(a); 
     DBMS_OUTPUT.PUT_LINE('Squage of 10 is : '|| a); 
END; 
/

DECLARE 
    a integer; 
PROCEDURE squareNum(x IN OUT integer) IS 
BEGIN 
    x := x * x; 
END; 
BEGIN 
    a := 37; 
    welcome; 
    squareNum(a); 
     DBMS_OUTPUT.PUT_LINE('Squage of 37 is : '|| a); 
END; 
/

