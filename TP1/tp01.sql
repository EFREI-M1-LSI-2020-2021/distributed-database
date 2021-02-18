--
-- 1. DROP all tables
--

--drop table MISSION;
--drop table EMP;
--drop table DEPT;

--
-- 2. CREATE database tables
--

create table DEPT (
	DEPTNO	NUMBER(2),
	DNAME	varchar2(20),
	LOC		varchar2(30),
	primary key (DEPTNO)
);

create table EMP (
	EMPNO	NUMBER(4),
	ENAME	varchar2(20),
	JOB		varchar2(20),
	MGR		NUMBER(4),
	HIREDATE	date,
	SAL		NUMBER(6,2),
	COMM	NUMBER(6,2),
	DEPTNO	NUMBER(2),
	primary key (EMPNO),
	foreign key (MGR) references EMP(EMPNO),
	foreign key (DEPTNO) references DEPT(DEPTNO)
);

create table MISSION (
	MISSNO	NUMBER(3),
	EMPNO	NUMBER(4),
	CIENAME	varchar2(30),
	LOCAL	varchar2(30),
	ENDDATE	date,
	primary key (MISSNO),
	foreign key (EMPNO) references EMP(EMPNO)
);

--
--  3. POPULATE database
--

--  Table DEPT
insert into DEPT values(10, 'ACCOUNTING',	'NEW-YORK');
insert into DEPT values(20, 'RESEARCH', 	'DALLAS');
insert into DEPT values(30, 'SALES',		'CHICAGO');
insert into DEPT values(40, 'OPERATIONS',	'BOSTON');

--  Table EMP
insert into EMP values(7839, 'KING', 'PRESIDENT', NULL, DATE  '1981-11-17', 5000.00, NULL, 10);
insert into EMP values(7566, 'JONES', 'MANAGER', 7839, DATE '1981-04-02', 2975.00, NULL, 20);
insert into EMP values(7698, 'BLAKE', 'MANAGER', 7839, DATE '1981-05-01', 2850.00, NULL, 30);
insert into EMP values(7782, 'CLARK', 'MANAGER', 7839, DATE '1981-06-09', 2450.00, NULL, 10);
--
insert into EMP values(7788, 'SCOTT', 'ANALYST', 7566, DATE '1981-11-09', 3000.00, NULL, 20);
insert into EMP values(7902, 'FORD', 'ANALYST', 7566, DATE '1981-12-03', 3000.00, NULL, 20);
--
insert into EMP values(7499, 'ALLEN', 'SALESMAN', 7698, DATE '1981-02-20', 1600.00, 300.00, 30);
insert into EMP values(7521, 'WARD', 'SALESMAN', 7698, DATE '1981-02-22', 1250.00, 500.00, 30);
insert into EMP values(7654, 'MARTIN', 'SALESMAN', 7698, DATE '1981-09-28', 1250.00, 1400.00, 30);
insert into EMP values(7844, 'TURNER', 'SALESMAN', 7698, DATE '1981-09-08', 1500.00, 0.00, 30);
insert into EMP values(7900, 'JAMES', 'CLERK', 7698, DATE '1981-09-08', 950.00, NULL, 30);
--
insert into EMP values(7934, 'MILLER', 'CLERK', 7782, DATE '1982-01-23', 1300.00, NULL, 10);
--
insert into EMP values(7876, 'ADAMS', 'CLERK', 7788, DATE '1981-09-23', 1100.00, NULL, 20);
--
insert into EMP values(7369, 'SMITH', 'CLERK', 7902, DATE '1980-12-17', 800.00, NULL, 20);

--  Table MISSION
insert into MISSION values(209, 7654, 'BMW', 'BERLIN', DATE '2011-02-09');
insert into MISSION values(212, 7698, 'MacDo', 'CHICAGO', DATE '2011-03-04');
insert into MISSION values(213, 7902, 'Oracle', 'DALLAS', DATE '2011-04-11');
insert into MISSION values(214, 7900, 'Fidal', 'PARIS', DATE '2011-06-07');
insert into MISSION values(216, 7698, 'IBM', 'CHICAGO', DATE '2011-02-09');
insert into MISSION values(218, 7499, 'Decathlon', 'LYON', DATE '2011-12-24');
insert into MISSION values(219, 7782, 'BMW', 'CHICAGO', DATE '2011-08-16');

COMMIT;


CREATE OR REPLACE PROCEDURE raise_salary (v_id in emp.empno%TYPE)
IS
BEGIN
UPDATE emp SET sal = sal * 1.10 WHERE empno = v_id;
commit;
END raise_salary;

call RAISE_SALARY(7839);
commit;
select * from emp;


CREATE OR REPLACE PROCEDURE query_emp(v_id IN emp.empno%TYPE,
v_name OUT emp.ename%TYPE,
v_salary OUT emp.sal%TYPE,
v_comm OUT emp.comm%TYPE)
IS
BEGIN
 SELECT ename, sal, comm INTO v_name, v_salary, v_comm FROM emp WHERE empno = v_id;
END query_emp;



create table audit_emp_values
(
    user_name     VARCHAR(255),
    timestamp     DATE        ,
    id            NUMBER(4)   ,
    old_last_name VARCHAR2(20),
    new_last_name VARCHAR2(20),
    old_title     VARCHAR2(20),
    new_title     VARCHAR2(20),
    old_salary    NUMBER(6, 2),
    new_salary    NUMBER(6, 2)
);

CREATE OR REPLACE TRIGGER audit_emp_values
AFTER DELETE OR INSERT OR UPDATE ON emp
FOR EACH ROW
BEGIN
INSERT INTO audit_emp_values (user_name,
timestamp, id, old_last_name, new_last_name,
old_title, new_title, old_salary, new_salary)
VALUES (USER, SYSDATE, :old.empno, :old.ename,
:new.ename, :old.job, :new.job,
:old.sal, :new.sal);
END;
/


insert into EMP values(7651, 'JHK', 'MANAGER', 7839, DATE '1981-08-09', 650.00, 10, 10);

select * from emp;
select * from audit_emp_values;