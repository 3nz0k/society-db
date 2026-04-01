-- 1
SELECT * FROM employee e JOIN department d ON e.department_id = d.id;

-- 2
SELECT e.department_id, d.name, e.last_name FROM employee e JOIN department d ON e.department_id = d.id order by e.department_id;

-- 3
SELECT e.last_name FROM employee e JOIN department d ON e.department_id = d.id where d."name" = 'distribution';

-- 4
SELECT e1.last_name, e1.salary, e2.last_name, e2.salary FROM employee e1 JOIN employee e2 ON e1.superior_id::int = e2.id where e1.salary > e2.salary;

-- 5
SELECT * FROM employee WHERE department_id IN (SELECT id FROM department WHERE name LIKE 'finance');

-- 6
SELECT e.last_name, e.title FROM employee e where title in (select e2.title from employee e2 where e2.last_name = 'amartakaldire');

-- 7
SELECT e.last_name, e.salary, e.department_id  FROM employee e where salary > any (select e2.salary from employee e2 where e2.department_id = '31');

-- 8
SELECT e.last_name, e.salary, e.department_id  FROM employee e where salary > all (select e2.salary from employee e2 where e2.department_id = '31');

-- 9
SELECT e.last_name, e.title FROM employee e where e.department_id ='31' and title in (select e2.title from employee e2 where e2.department_id = '32');

-- 10
SELECT e.last_name, e.title FROM employee e where e.department_id ='31' and title not in (select e2.title from employee e2 where e2.department_id = '32');

-- 11
SELECT last_name, title, salary FROM employee where title in (select title from employee where last_name = 'fairent') and salary in (select salary from employee where last_name = 'fairent');

-- 12
SELECT e.department_id, d.name, e.last_name FROM employee e right join department d on e.department_id = d.id order by e.department_id;

-- 13
SELECT AVG(salary) FROM employee WHERE title LIKE 'secrétaire';

-- 14
select COUNT(title) FROM employee group by department_id;

-- 15
select AVG(e.salary), SUM(e.salary) FROM employee e join department d on e.department_id = d.id group by d.region_id;

-- 16
SELECT department_id, COUNT(*) FROM employee GROUP BY department_id HAVING count(*) >= 3;

-- 17
select substr(last_name, 0, 2) FROM employee GROUP BY substr(last_name, 0, 2) HAVING Count(*) >= 3;

-- 18
select max(salary), min(salary), max(salary) - min(salary) as Ecart from employee;

-- 19
select count(distinct title) from employee;

-- 20
select title, count(title) from employee group by title having count(*) >= 1;

-- 21
select d.name, count(e.title) from employee e join department d on e.department_id = d.id group by d.name having count(e.title) >= 1;

-- 22
select title, avg(salary) from employee group by title having avg(salary) > (select avg(salary) from employee where title = 'représentant');

-- 23
select count(salary) as salaryCount, count(commission_rate) as commRateCount from employee;