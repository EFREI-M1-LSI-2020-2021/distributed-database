-- Exo 1
create table Messages(
    Resultats VARCHAR2 (60)
);

DECLARE

BEGIN
	FOR i IN 1..10
    LOOP
        IF i != 6 and i != 8 THEN
            insert into Messages values (CONCAT('message', i));
        END IF;
    END LOOP;
    commit;
END;


select * from Messages;
select * from emp;

-- Exo 2

DECLARE
    v_EMPNO  EMP.EMPNO%Type := 7566;
    v_COMM  EMP.COMM%Type;
    v_SAL EMP.SAL%Type;
BEGIN

	select SAL into v_SAL from emp where EMPNO = v_EMPNO;
	IF v_SAL < 1000  THEN
        v_COMM := v_SAL * 0.10;
    ELSIF v_SAL > 1000 and v_SAL < 1500 THEN
	    v_COMM := v_SAL * 0.15;
	ELSIF v_SAL > 1500 THEN
	    v_COMM := v_SAL * 0.20;
	ELSE
	    v_COMM := NULL;
    END IF;
	UPDATE emp SET COMM = v_COMM WHERE EMPNO = v_EMPNO ;
    commit;
END;
/

select * from emp;

-- Exo 3

create table EMP_FR
(
    EMPNO    NUMBER(4) not null
        primary key,
    ENAME    VARCHAR2(20),
    JOB      VARCHAR2(20),
    MGR      NUMBER(4)
        references EMP,
    HIREDATE DATE,
    SAL      NUMBER(6, 2),
    COMM     NUMBER(6, 2),
    DEPTNO   NUMBER(2)
        references DEPT
);

DECLARE
    CURSOR c_emp
    IS
        SELECT
            EMP.SAL, EMP.EMPNO, EMP.ENAME, EMP.JOB, EMP.MGR, EMP.HIREDATE, EMP.COMM, EMP.DEPTNO
        FROM
            EMP
        ORDER BY
            EMP.EMPNO desc;
BEGIN
    FOR f_emp IN c_emp
    LOOP
        f_emp.SAL := f_emp.SAL * 0.85 * 1.25;

        IF f_emp.SAL < 1000  THEN
            f_emp.COMM := f_emp.SAL * 0.10;
        ELSIF f_emp.SAL > 1000 and f_emp.SAL < 1500 THEN
	        f_emp.COMM := f_emp.SAL * 0.15;
	    ELSIF f_emp.SAL > 1500 THEN
	        f_emp.COMM := f_emp.SAL * 0.20;
	    ELSE
	        f_emp.COMM := NULL;
        END IF;

        INSERT INTO EMP_FR (SAL, EMPNO, ENAME, JOB, MGR, HIREDATE, COMM, DEPTNO) values (f_emp.SAL, f_emp.EMPNO, f_emp.ENAME, f_emp.JOB, f_emp.MGR, f_emp.HIREDATE, f_emp.COMM, f_emp.DEPTNO);
    END LOOP;
    commit;
END;
/


select * from EMP_FR;

-- Exo 4

CREATE OR REPLACE procedure getSalaryJob (v_EMPNO in EMP.EMPNO%Type, v_SAL out EMP.SAL%Type, v_JOB out EMP.JOB%Type)
    is
    begin
          SELECT SAL,JOB
          INTO v_SAL, v_JOB
          FROM EMP
          WHERE EMPNO = v_EMPNO;
end;
/

-- Exo 5

CREATE OR REPLACE FUNCTION SAL_ANNUEL(
    v_SAL EMP.SAL%Type,
    v_COMM EMP.COMM%Type
)
RETURN NUMBER
IS
    total_sal NUMBER;
BEGIN
    IF v_COMM is null  THEN
        total_sal := v_SAL*12;
    ELSE
        total_sal := v_SAL*12+v_COMM;
    END IF;

    total_sal := v_SAL*12+v_COMM;
    RETURN total_sal;
END;


select SAL_ANNUEL(EMP.SAL, EMP.COMM), EMP.ENAME from EMP;

-- Exo 6

CREATE OR REPLACE procedure increaseSalaryFrom(v_DEPTNO in EMP.DEPTNO%Type, v_INCREASE in NUMBER)
    is
    begin
        UPDATE emp SET SAL = SAL*v_INCREASE WHERE DEPTNO = v_DEPTNO;
    COMMIT;
end;
/
select * from emp;


-- Exo 7

CREATE TABLE Personnes (
        code number(5) primary key,
        nom varchar2 (20),
        adr varchar(10)
);

select * from Personnes;

INSERT INTO Personnes VALUES (123, 'Untel', 'IbnSina');


CREATE OR REPLACE TRIGGER showInfo
AFTER INSERT OR UPDATE OR DELETE ON PERSONNES
FOR EACH ROW
BEGIN
    IF DELETING THEN
        DBMS_OUTPUT.PUT_LINE('Deleting PERSONNE ' || :old.NOM);
    ELSIF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('Inserting PERSONNE '|| :new.NOM);
    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE('updating PERSONNE ' || :new.NOM);
    end if;
end;

select * from Personnes;

UPDATE Personnes SET Nom = 'kljk' WHERE code = 13;

INSERT INTO Personnes VALUES (13, 'Untel', 'IbnSina');

DELETE from Personnes where code = 13;

-- Exo 8



-- Exo 9

create or replace trigger check_Salary
before update on EMP
for each row
begin
  if (:new.SAL < :old.SAL) then
    raise_application_error(-20000, 'Advance cannot be less than zero or greater than one hundred.');
  end if;
end;


