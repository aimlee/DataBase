--3
SELECT LastName FROM Employees;
--4
SELECT DISTINCT LastName From Employees;
--5
SELECT * FROM Employees WHERE LastName = 'Smith';
--6
SELECT * FROM Employees
  WHERE LastName = 'Smith' OR LastName = 'Doe';
--7
SELECT * FROM Employees WHERE Department = 14;
--8
SELECT * FROM Employees
  WHERE Department IN (37,77);
--9
SELECT SUM(Budget) FROM Departments;
--10
SELECT Department, COUNT(*)
  FROM Employees
  GROUP BY Department;
--11
SELECT Code FROM Departments
  WHERE Code IN
  (
    SELECT Department
      FROM Employees
      GROUP BY Department
      HAVING COUNT(*) > 2
  );
--12
SELECT DISTINCT ON(budget) name FROM departments ORDER BY budget DESC LIMIT 1 OFFSET 1;

--13
SELECT Name FROM Departments
  WHERE Code IN
  (
    SELECT Department
      FROM Employees
      GROUP BY Department
      HAVING COUNT(*) > 2
  );

--14
SELECT name from employees 
WHERE city='Almaty' UNION
SELECT name from customers
 WHERE city='Almaty';

--15
SELECT * from departments WHERE budget>60000 ORDER BY budget, code DESC;

--16
UPDATE departments SET budget=budget*0.9 WHERE name =(SELECt name from departments ORDER BY budget LIMIT 1) ;

--17
UPDATE employees SET department=(SELECT code from departments where name='IT') WHERE department=(SELECT code from departments where name='Research');

--18
DELETE FROM employees AS e USING departments AS d where d.name='IT' AND e.department=d.code;

--19
DELETE FROM employees;

SELECT * from employees;
SELECT * from customers;
SELECT * from departments;

