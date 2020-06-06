-- # PREPARATION

--CREATE TABLE messages
--(results	VARCHAR2(60))
--/

-- # 1 

--BEGIN
--FOR i in 1..10 LOOP
--IF i<>6 AND i<>8 THEN
--	INSERT INTO MESSAGES(results)
--	VALUES(i);
--END IF;
--END LOOP;
--COMMIT;
--END;
--/

--SELECT * FROM MESSAGES

-- # 2

--SET SERVEROUTPUT ON
--SET VERIFY OFF
--DEFINE p_empno = 100
--DECLARE
--v_sal NUMBER(10,2);
--v_bonus NUMBER(10,2);
--BEGIN
--	SELECT salary INTO v_sal FROM EMPLOYEES 
--    WHERE employee_id = &p_empno;
--	IF v_sal < 5000 THEN
--		v_bonus := v_sal*0.1;
--	ELSE IF v_sal BETWEEN 5000 AND 10000 THEN
--		v_bonus := v_sal*0.15;
--	ELSE IF v_sal > 10000 THEN
--		v_bonus := v_sal*0.2;
--	ELSE IF v_sal = NULL THEN
--		v_bonus := 0;
--	END IF;
--	END IF;
--	END IF;
--	END IF;
--	DBMS_OUTPUT.PUT_LINE('Bonus yang diterima : '||to_char(v_bonus));
--END;
--/

-- # 3

--CREATE TABLE EMP
--AS SELECT * FROM EMPLOYEES
--/

--ALTER TABLE emp
--ADD(stars VARCHAR2(50));

-- # 4

--DEFINE p_empno = 104;
--DECLARE
--v_sal NUMBER;
--v_asterisk VARCHAR2(255) := NULL;
--BEGIN
--	SELECT salary
--	INTO v_sal
--	FROM emp
--	WHERE employee_id = &p_empno;
--	v_sal := round(v_sal/1000);
--	FOR i in 1..v_sal LOOP
--		v_asterisk := concat(v_asterisk,'*');
--	END LOOP;
--	UPDATE emp SET stars = v_asterisk
--	WHERE employee_id = &p_empno;
--	COMMIT;
--END;
--/

--SELECT * FROM emp WHERE employee_id = 104;

--DEFINE p_empno = 174;
--DECLARE
--v_sal NUMBER;
--v_asterisk VARCHAR2(255) := NULL;
--BEGIN
--	SELECT salary
--	INTO v_sal
--	FROM emp
--	WHERE employee_id = &p_empno;
--	v_sal := round(v_sal/1000);
--	FOR i in 1..v_sal LOOP
--		v_asterisk := concat(v_asterisk,'*');
--	END LOOP;
--	UPDATE emp SET stars = v_asterisk
--	WHERE employee_id = &p_empno;
--	COMMIT;
--END;
--/

--SELECT * FROM emp WHERE employee_id = 174;

--DEFINE p_empno = 176;
--DECLARE
--v_sal NUMBER;
--v_asterisk VARCHAR2(255) := NULL;
--BEGIN
--	SELECT salary
--	INTO v_sal
--	FROM emp
--	WHERE employee_id = &p_empno;
--	v_sal := round(v_sal/1000);
--	FOR i in 1..v_sal LOOP
--		v_asterisk := concat(v_asterisk,'*');
--	END LOOP;
--	UPDATE emp SET stars = v_asterisk
--	WHERE employee_id = &p_empno;
--	COMMIT;
--END;
--/

--SELECT * FROM emp WHERE employee_id = 176;

-- # GET BACK

--DROP TABLE emp;