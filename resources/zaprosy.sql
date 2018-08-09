-- находим сотрудников с самой высокой зарплатой в отделах
select *
from DENKLE.EMPLOYEES e1
where SALARY = (select max(SALARY)
                from DENKLE.EMPLOYEES e2
                where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID)
order by DEPARTMENT_ID;

--находим самые высокие зарплаты в отделах
select distinct
  DEPARTMENT_ID,
  FIRST_NAME,
  LAST_NAME,
  max(SALARY)
  over (
    partition by DEPARTMENT_ID ) MAXIMALNIE_SALARY
from DENKLE.EMPLOYEES
order by DEPARTMENT_ID;

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