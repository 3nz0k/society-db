-- Compléter ce fichier avec vos réponses.
-- glhf!

-- 1
select * from department;

--2
select last_name, hiring_date, superior_id, department_id from employee;

--3
select title from employee;

-- 4
select distinct title from employee;

-- 5
select * from employee where salary > 25000;

-- 6
select last_name, id, department_id from employee where title = 'secrétaire';

-- 7
select last_name, department_id from employee where department_id > 40 ;

-- 8
select last_name, first_name from employee where last_name < first_name;

-- 9
select last_name, salary, department_id from employee where title = 'représentant' and department_id = '35' and salary > 20000;

-- 10
select last_name, title, salary from employee where title = 'représentant' or title = 'président';

-- 11
select last_name, title, department_id, salary from employee where department_id = '34' AND title = 'représentant' or title = 'secrétaire';

-- 12
select last_name, title, department_id, salary from employee where department_id = '34' AND title = 'représentant' or title = 'secrétaire' and department_id = '34';

-- 13
select last_name, salary from employee where salary >= 20000 and salary <= 30000;

-- 14
select last_name from employee where last_name like 'h%';

-- 15
select last_name from employee where last_name like '%n';

-- 16
select last_name from employee where last_name like '__u%';

-- 17
select last_name, salary from employee where department_id = '41' order by salary;

-- 18
select last_name, salary from employee where department_id = '41' order by salary desc;

-- 19
select title, last_name, salary from employee order by title asc, salary desc;

-- 20
select last_name, commission_rate, salary from employee where commission_rate is NULL;

-- 21
select last_name, salary, commission_rate, title from employee where commission_rate is NULL;

-- 22
select last_name, salary, commission_rate, title from employee where commission_rate is not NULL;

-- 23
select last_name, salary, commission_rate, title from employee where commission_rate < 15;

-- 24
select last_name, salary, commission_rate, title from employee where commission_rate > 15;

-- 25
select last_name, salary, commission_rate,  commission_rate*salary as commission from employee where commission_rate < 15;

-- 26
select last_name, salary, commission_rate,  commission_rate*salary as commission from employee where commission_rate is not null order by commission_rate;

-- 27
select CONCAT("last_name", first_name) as name from employee;

-- 28
select SUBSTRING(last_name, 0, 6) from employee;

-- 29
select last_name, position('r' in last_name) from employee;

-- 30
select last_name, UPPER(last_name), lower(last_name) from employee where last_name = 'vrante';

-- 31
select last_name, length(last_name) from employee;