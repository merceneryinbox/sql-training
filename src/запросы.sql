-- находим сотрудников с самой высокой зарплатой в отделах
select *
from DENKLE.EMPLOYEES e1
where SALARY = (select max(SALARY)
                from DENKLE.EMPLOYEES e2
                where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID)
order by DEPARTMENT_ID;

--находим самые высокие зарплаты в отделах и кто их получает
select distinct
  DEPARTMENT_ID,
  FIRST_NAME,
  LAST_NAME,
  max(SALARY)
  over (
    partition by DEPARTMENT_ID ) MAXIMALNIE_SALARY
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;

select max(SALARY)
from DENKLE.EMPLOYEES
group by DEPARTMENT_ID;

select
  EMPLOYEES.DEPARTMENT_ID,
  max(SALARY)
from DENKLE.EMPLOYEES
  join DENKLE.DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
group by EMPLOYEES.DEPARTMENT_ID;

select e1.*
from DENKLE.EMPLOYEES e1
where e1.SALARY = (select max(e2.SALARY)
                   from DENKLE.EMPLOYEES e2
                   where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID);

--находим сотрудников со второй самой высокой зарплатой с конца
select *
from DENKLE.EMPLOYEES e1
where SALARY = (select max(SALARY)
                from DENKLE.EMPLOYEES e2
                where e2.SALARY < (select max(e3.SALARY)
                                   from DENKLE.EMPLOYEES e3
                                   where e2.DEPARTMENT_ID = e3.DEPARTMENT_ID) and e1.DEPARTMENT_ID = e2.DEPARTMENT_ID);

-- находим сотрудников, которые получают больше своих начальников
select *
from DENKLE.EMPLOYEES e1, DENKLE.EMPLOYEES e2
where e1.SALARY > e2.SALARY and e1.MANAGER_ID = e2.EMPLOYEE_ID;

--Вывести список ID отделов, количество сотрудников в которых не превышает 3 человек
select DEPARTMENT_ID
from DENKLE.EMPLOYEES
group by DEPARTMENT_ID
having count(*) < 3;

--Вывести список сотрудников, не имеющих назначенного руководителя, работающего в том-же отделе
select * -- выбираем список
from DENKLE.EMPLOYEES e1e -- из таблицы эмплои
  left join DENKLE.EMPLOYEES e2m  -- объединяем с собой же
    on e2m.EMPLOYEE_ID =
       e1e.MANAGER_ID -- где id мэнеджера сотрудника таблицы сотрудников = ID сотрудника из таблицы менеджеров
where e2m.DEPARTMENT_ID <> e1e.DEPARTMENT_ID; -- там где ID отдела менеджера не равен ID отдела его подчинённого

-- Найти список ID отделов с максимальной суммарной зарплатой сотрудников
with sum_salary as
( select department_id, sum(salary) salary
  from   DENKLE.EMPLOYEES
  group  by department_id )
select department_id
from   sum_salary a
where  a.salary = ( select max(salary) from sum_salary );