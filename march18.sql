# capgemini
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 Select FIRST_NAME AS WORKER_NAME from Worker;
 Select upper(FIRST_NAME) from Worker;
 Select distinct DEPARTMENT from Worker;
 Select substr(FIRST_NAME,1,3) from Worker;
 SELECT instr(first_name,'a')from Worker where FIRST_NAME = 'Amitabh';
 Select RTRIM(FIRST_NAME) from Worker;
 Select LTRIM(DEPARTMENT) from Worker;
 Select distinct length(DEPARTMENT) from Worker;
 Select REPLACE(FIRST_NAME,'a','A') from Worker;
 select first_name || ' ' || last_name as full_name from Worker;
 Select * from Worker order by FIRST_NAME asc;
 Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;
 Select * from Worker where FIRST_NAME in ('Vipul','Satish');
 Select * from Worker where FIRST_NAME not in ('Vipul','Satish');
 Select * from Worker where DEPARTMENT like 'Admin%';
 Select * from Worker where FIRST_NAME like '%a%';
 Select * from Worker where FIRST_NAME like '%a';
 Select * from Worker where FIRST_NAME like '_____h';
 Select * from Worker where SALARY between 100000 and 500000;
 select * from worker where year(joining_date) =2014 and month(joining_date) = 2;
 SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';
 select First_Name,Last_Name from Worker where  SALARY>=50000 and SALARY<=100000;
 SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers FROM worker GROUP BY DEPARTMENT ORDER BY No_Of_Workers DESC;
 SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE FROM Worker W INNER JOIN Title T ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE in ('Manager');
 SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*) FROM Title GROUP BY WORKER_TITLE, AFFECTED_FROM HAVING COUNT(*) > 1;
 SELECT * FROM Worker WHERE (WORKER_ID% 2)!= 0;
 SELECT * FROM Worker WHERE (WORKER_ID% 2)==0;
 SELECT * FROM Worker INTERSECT SELECT * FROM Worker;
 SELECT current_timestamp;
 SELECT * FROM Worker ORDER BY Salary DESC LIMIT 10;
SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT 5-1, 1;
SELECT Salary
FROM Worker W1
WHERE 4 = (
SELECT COUNT( DISTINCT ( W2.Salary ) )
FROM Worker W2
WHERE W2.Salary >= W1.Salary );
Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;
Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);
select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';
SELECT * FROM Worker
INTERSECT
SELECT * FROM Worker;
SELECT *
FROM WORKER
WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker);
SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;
SELECT DEPARTMENT, COUNT(DEPARTMENT) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT;
Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker);
Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);
SELECT * FROM Worker WHERE WORKER_ID <=5
UNION
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;
SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;
 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary >= b.Salary) order by a.Salary desc;
 SELECT distinct Salary from worker a WHERE 1 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;
SELECT DEPARTMENT, sum(Salary) from worker group by DEPARTMENT;
SELECT FIRST_NAME, SALARY from Worker WHERE SALARY=(SELECT max(SALARY) from Worker);
