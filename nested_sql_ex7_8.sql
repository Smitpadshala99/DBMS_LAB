-- 7 and 8 14/02/2023

use dbms_lab;

CREATE TABLE DEPT (
  DEPTNO INT PRIMARY KEY,
  DNAME VARCHAR(20) NOT NULL,
  LOC VARCHAR(20) NOT NULL
);

INSERT INTO DEPT (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');


CREATE TABLE EMP (EMPNO INT PRIMARY KEY,
  ENAME VARCHAR(20) NOT NULL,
  JOB VARCHAR(20) NOT NULL,
  MGR INT,
  HIREDATE DATE NOT NULL,
  SAL DECIMAL(10,2) NOT NULL,
  COMM DECIMAL(10,2),
  DEPTNO INT,
  FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO));
  
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
  (7369, 'SMITH', 'CLERK', 7902, '1980/12/17', 500, 800, 20),
  (7499, 'ALLEN', 'SALESMAN', 7698, '1981/02/20', 1600, 300, 30),
  (7521, 'WARD', 'SALESMAN', 7698, '1981/02/22', 1250, 500, 30),
  (7566, 'JONES', 'MANAGER', 7839, '1981/04/02', 2975, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981/09/28', 1250, 1400, 30),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981/05/01', 2850, NULL, 30),
  (7782, 'CLARK', 'MANAGER', 7839, '1981/06/09', 2450, NULL, 10),
  (7788, 'SCOTT', 'ANALYST', 7566, '1982/12/09', 3000, NULL, 20),
  (7839, 'KING', 'PRESIDENT', NULL, '1981/11/17', 5000, NULL, 10),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981/09/08', 1500, 0, 30),
  (7876, 'ADAMS', 'CLERK', 7788, '1983/01/12', 1100, NULL, 20),
  (7900, 'JAMES', 'CLERK', 7698, '1981/12/03', 950, NULL, 30),
  (7902, 'FORD', 'ANALYST', 7566, '1981/12/03', 3000, NULL, 20),
  (7934, 'MILLER', 'CLERK', 7782, '1982/01/23', 1300, NULL, 10);

select * FROM EMP;
SELECT * FROM DEPT;
-- 1
SELECT * FROM EMP WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

-- 2
SELECT * FROM EMP WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN');

-- 3
SELECT * FROM EMP WHERE SAL = (SELECT SAL FROM EMP WHERE ENAME = 'FORD') OR SAL = (SELECT SAL FROM EMP WHERE ENAME = 'SMITH') ORDER BY ENAME DESC;

-- 4
SELECT * FROM EMP WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'MILLER') OR SAL > (SELECT SAL FROM EMP WHERE ENAME = 'ALLEN');

-- 5
SELECT * FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'SALES') ORDER BY SAL DESC LIMIT 1;

-- 6
SELECT * FROM EMP E1 WHERE HIREDATE < (SELECT MAX(HIREDATE) FROM EMP WHERE JOB = E1.JOB AND MGR = (SELECT EMPNO FROM EMP WHERE ENAME = 'KING'));
 
-- 7
SELECT ENAME, SAL FROM EMP E WHERE E.SAL IN(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

-- 8
SELECT * FROM EMP WHERE SAL = (SELECT (MAX(SAL) + MIN(SAL))/2 FROM EMP);

-- 9
select * from EMP e where hiredate in (select hiredate from EMP where e.ename != ename);

-- 10
select * from EMP e where hiredate < (select hiredate from EMP where empno = e.mgr);