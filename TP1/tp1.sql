-- Exo 1

create table Messages(
    value int
);

declare
begin
    for i in 1..10
    loop
        if i not in (6,8) then
            insert into Messages values(i);
        end if;
    end loop;
    commit;
end;

select * from Messages;

-- Exo 2

create function get_com(empid emp.empno%type)
    return float
    is
    salary emp.sal%type;
begin
    select sal into salary from emp where empno = empid;
    if salary < 1000 then
        salary := salary * 0.10;
    elsif (salary < 1500) then
        salary := salary * 0.15;
    elsif (salary > 1500) then
        salary := salary * 0.20;
    end if;
    update emp set comm = salary where empno = empid;
    commit;
    return salary;
end;

-- Exo 3

drop table EMP_FR;
create table EMP_FR as (select * from EMP);
truncate table EMP_FR;

declare
    cursor c_emp is select * from EMP;
    no_employee exception;
    count_emp integer;
begin
    select COUNT(*) into count_emp FROM EMP;
    if count_emp < 1 then
        raise no_employee;
    end if;
    for emp in c_emp
    loop
        emp.SAL := emp.SAL * 0.85 * 1.25;
        emp.COMM := emp.COMM * 0.85;
        insert into EMP_FR values emp;
    end loop;
    commit;
    exception when no_employee then
        raise_application_error(-20500, 'No employee found');
end;

-- Exo 4

create procedure get_emp_info(empid in emp.empno%type, s out emp.sal%type, j out emp.job%type)
is
begin
    select SAL, JOB
    into s, j
    from emp
    where EMPNO = empid;
end;

-- Exo 5

create function sal_annuel(
    sal emp.sal%type,
    comm emp.comm%type
)
return number
is
    total number;
begin
    if comm is null  then
        total := sal * 12;
    else
        total := sal * 12 + comm;
    end if;

    return sal * 12 + comm;
end;

-- Exo 6

create procedure increase_salary_dept(dept in emp.deptno%type, increase in number)
is
begin
    update emp set sal = sal * increase where deptno = dept;
end;

-- Exo 7

CREATE TABLE persons (
    code number(5) primary key,
    nom varchar2 (20),
    adr varchar(10)
);

create or replace trigger person_trigger
after insert or delete or update on persons
for each row
begin
    if deleting then
        dbms_output.put_line('Deleting person ' || :old.nom);
    elsif inserting then
        dbms_output.put_line('Inserting person ' || :new.nom);
    elsif updating then
        dbms_output.put_line('Updating person ' || :new.nom);
    end if;
end;

-- Exo 8



-- Exo 9

create or replace trigger salary_trigger
before update on emp
for each row
begin
  if (:new.SAL < :old.SAL) then
    raise_application_error(-20000, 'Advance cannot be less than zero or greater than one hundred.');
  end if;
end;