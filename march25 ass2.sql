SELECT JOB_TITLE, MAX_SALARY-MIN_SALARY DIFFERENCE FROM JOBS WHERE MAX_SALARY BETWEEN 10000 AND 20000
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES WHERE JOB_ID IN ('IT_PROG', 'SA_MAN')
SELECT * FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL AND SALARY BETWEEN 5000 AND 10000 AND DEPARTMENT_ID=30
SELECT MANAGER_ID, COUNT(*) FROM EMPLOYEES GROUP BY MANAGER_ID
SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(SALARY)>10000