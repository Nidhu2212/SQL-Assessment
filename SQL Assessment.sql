SELECT * FROM workers;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT *
FROM Worker
ORDER BY FIRAT_NAME ASC, DEPARTMENT DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT *
FROM worker
WHERE FIRAT_NAME IN ('Vipul', 'Satish');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
SELECT *
FROM worker
WHERE FIRAT_NAME LIKE '______h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
SELECT *
FROM Worker
WHERE SALARY BETWEEN 30000 AND 50000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

-- 6. Write an SQL query to show the top 6 records of a table. 
SELECT *
FROM worker
LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them
SELECT DEPARTMENT
FROM workers.worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT, COUNT(WORKER_ID) as PEOPLE
FROM Worker
GROUP BY DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department. 
SELECT FIRAT_NAME, DEPARTMENT, SALARY
FROM (SELECT FIRAT_NAME, DEPARTMENT, SALARY, RANK() OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS salary_rank
FROM worker) ranked
WHERE salary_rank = 1;


