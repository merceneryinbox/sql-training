--самая высокая зарплата в организации
select Max(SALARY)
from DENKLE.EMPLOYEES;

--человека с самой высокой з-п в организации
select
  EMPLOYEE_ID,
  FIRST_NAME,
  LAST_NAME,
  SALARY
from DENKLE.EMPLOYEES
where SALARY = (select max(SALARY)
                from DENKLE.EMPLOYEES);



--вторая самая высокая з-п в организации
select max(SALARY)
from DENKLE.EMPLOYEES
where SALARY NOT IN (select max(SALARY)
                     from DENKLE.EMPLOYEES);

--сотрудника со второй самой высокой з-п в компании
select
  EMPLOYEE_ID,
  FIRST_NAME,
  LAST_NAME,
  SALARY
from DENKLE.EMPLOYEES
where SALARY = (select max(SALARY)
                from DENKLE.EMPLOYEES
                where SALARY not in (select max(SALARY)
                                     from DENKLE.EMPLOYEES));


-- самые высокие зарплаты по отделам
select distinct
  DEPARTMENT_ID,
  max(SALARY)
  over (
    order by DEPARTMENT_ID range unbounded preceding)
from DENKLE.EMPLOYEES;

select distinct
  DEPARTMENT_ID,
  max(SALARY) as maxy
from DENKLE.EMPLOYEES
group by DEPARTMENT_ID
order by maxy;

select distinct
  DEPARTMENT_ID,
  max(SALARY)
  over (
    partition by DEPARTMENT_ID )
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;






select
  DEPARTMENT_ID,
  max(salary) as maxy
from DENKLE.EMPLOYEES
group by DEPARTMENT_ID
order by maxy;

--людей с ЗП = 2 сверху


select
  DEPARTMENT_ID,
  EMPLOYEE_ID,
  FIRST_NAME,
  LAST_NAME,
  SALARY
from DENKLE.EMPLOYEES
where SALARY in (select max(SALARY)
                 from DENKLE.EMPLOYEES
                 group by DEPARTMENT_ID)
order by DEPARTMENT_ID;

select
  em_em.DEPARTMENT_ID,
  em_em.EMPLOYEE_ID,
  em_em.FIRST_NAME,
  em_em.SALARY,
  ('----'),
  em_ma.EMPLOYEE_ID             as manager_id,
  em_ma.FIRST_NAME,
  em_ma.SALARY,
  (em_em.SALARY - em_ma.SALARY) as delta
from DENKLE.EMPLOYEES em_em, DENKLE.EMPLOYEES em_ma
where em_em.MANAGER_ID = em_ma.EMPLOYEE_ID and em_em.SALARY > em_ma.SALARY;

select DEPARTMENT_ID
from DENKLE.EMPLOYEES
group by DEPARTMENT_ID
having count(EMPLOYEE_ID) < 5;

select *
from DENKLE.EMPLOYEES mm left join DENKLE.EMPLOYEES em on mm.EMPLOYEE_ID = em.MANAGER_ID
where mm.DEPARTMENT_ID <> em.DEPARTMENT_ID;

-- сотрудников у которых з-п выше чем з-п начальников по своим отделам.
select
  e1.DEPARTMENT_ID,
  e1.EMPLOYEE_ID,
  e1.FIRST_NAME,
  e1.SALARY
from DENKLE.EMPLOYEES e1, DENKLE.EMPLOYEES e2
where e1.SALARY > e2.SALARY and e1.MANAGER_ID = e2.EMPLOYEE_ID;

--Вывести список сотрудников, не имеющих назначенного руководителя, работающего в том-же отделе
select
  emp.DEPARTMENT_ID,
  emp.EMPLOYEE_ID,
  emp.FIRST_NAME,
  man.FIRST_NAME
from DENKLE.EMPLOYEES emp left join DENKLE.EMPLOYEES man on man.EMPLOYEE_ID = emp.MANAGER_ID
where emp.DEPARTMENT_ID <> man.DEPARTMENT_ID;

select distinct
  DEPARTMENT_ID,sum(SALARY)
  over (
    partition by DEPARTMENT_ID
    order by DEPARTMENT_ID range between unbounded preceding and current row ) eee
from DENKLE.EMPLOYEES order by DEPARTMENT_ID;

select
  emp.DEPARTMENT_ID,
  emp.EMPLOYEE_ID,
  emp.FIRST_NAME,
  emp.SALARY,
  ('======='),
  man.SALARY,
  man.FIRST_NAME
from DENKLE.EMPLOYEES emp, DENKLE.EMPLOYEES man
where emp.MANAGER_ID = man.EMPLOYEE_ID and emp.SALARY > man.SALARY;


