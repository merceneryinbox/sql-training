SELECT
  manager_id,
  last_name,
  salary,
  SUM(salary)
  OVER (
    PARTITION BY manager_id
    ORDER BY SALARY rows UNBOUNDED PRECEDING ) l_csum
FROM DENKLE.employees;

select *
from DENKLE.EMPLOYEES e
  join DENKLE.DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by SALARY;

select
  distinct
  DEPARTMENT_ID,
  sum(SALARY)
  over (
    partition by DEPARTMENT_ID
    order by DEPARTMENT_ID range unbounded preceding ) as salary_sum_by_departments
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;

select distinct
  DEPARTMENT_ID,
  sum(SALARY)
  over (
    partition by DEPARTMENT_ID
    order by DEPARTMENT_ID range unbounded preceding ) as sssss
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;

-- функция берёт таблицу из неё выбирает указанные колонки разбивает таблицу по id отдела(OVER) и применяет для каждого
-- RANGE-по id отдела суммирует все салари в одну сумму, если указать ROWS то операция  SUM() будет производиться для
-- каждой отличающейся по зарплате строки и для каждого отдела складывает суммы всех ежемесячных зарплат ячейку.
select distinct
  department_id,
  sum(SALARY)
  over (
    partition by DEPARTMENT_ID
    order by DEPARTMENT_ID range unbounded preceding )
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;

--вторая с конца по размеру зарплата
select max(SALARY) as second_max_desc
from DENKLE.EMPLOYEES
where SALARY not in (select max(SALARY)
                     from DENKLE.EMPLOYEES);

--test
select
  e.DEPARTMENT_ID,
  e.EMPLOYEE_ID,
  e.FIRST_NAME,
  e.LAST_NAME,
  e.SALARY,
  '  CHIEF_WITH_SMALL_SALARY',
  m.LAST_NAME,
  m.SALARY,
  (e.SALARY - m.SALARY) as difference_in_salary
from DENKLE.EMPLOYEES e, DENKLE.EMPLOYEES m
where e.DEPARTMENT_ID = m.DEPARTMENT_ID and e.SALARY > m.SALARY
order by e.DEPARTMENT_ID desc;

--Вывести список сотрудников, получающих заработную плату большую чем у непосредственного руководителя
select
  e.DEPARTMENT_ID,
  e.EMPLOYEE_ID,
  e.FIRST_NAME,
  e.SALARY,
  e.MANAGER_ID
from DENKLE.EMPLOYEES e, DENKLE.EMPLOYEES m
where e.MANAGER_ID = m.EMPLOYEE_ID and e.SALARY > m.SALARY;

--максимальные зарплаты по отделам
select max(SALARY) max_sal
from DENKLE.EMPLOYEES e
  join DENKLE.DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by DEPARTMENT_NAME
order by max_sal desc;

--людей с максимальными зарплатами по отделам

select distinct *
from DENKLE.EMPLOYEES e1
where SALARY in (select max(SALARY)
over (
  partition by e2.DEPARTMENT_ID
  order by e1.EMPLOYEE_ID range unbounded preceding )
                 from DENKLE.EMPLOYEES e2)
order by DEPARTMENT_ID;

select *
from DENKLE.EMPLOYEES e1
where SALARY = (select MAX(SALARY)
                from DENKLE.EMPLOYEES e2
                where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID)
order by EMPLOYEE_ID;
-- select distinct -- выбрать следующий набор колонок для отображения:
--   DEPARTMENT_ID, -- номер отдела
--   EMPLOYEE_ID, -- номер сотрудника
--   FIRST_NAME, -- имя сотрудника
--   LAST_NAME, -- фамилию сотрудника
--   SALARY -- его зарплату
-- from DENKLE.EMPLOYEES -- из таблицы эмплои
-- where SALARY in (select max(SALARY) -- где зарплата сотрудника в диапазоне максимальной зарплаты
-- over ( -- где диапазон определяется
--   partition by DEPARTMENT_ID) -- номером отдела
--                  from DENKLE.EMPLOYEES) -- таблицы эмплои
-- order by DEPARTMENT_ID desc ; -- отобразить ранжировав по номеру отдела в обратном порядке
--
-- select
--   DEPARTMENT_ID,
--   FIRST_NAME,
--   LAST_NAME,
--   SALARY
-- from DENKLE.EMPLOYEES
-- where SALARY in (select max(SALARY) max_sal
--                  from DENKLE.EMPLOYEES e
--                    join DENKLE.DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
--                  group by DEPARTMENT_NAME)
-- order by DEPARTMENT_ID asc;