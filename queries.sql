SELECT emp.emp_no,
  emp.first_name,
  emp.last_name,
  emp.gender,
  sal.salary
FROM employees emp
INNER JOIN salaries sal ON
emp.emp_no=sal.emp_no;

SELECT *
FROM employees
WHERE hire_date LIKE '1986%';

SELECT dmg.emp_no,
  emp.first_name,
  emp.last_name,
  dmg.dept_no,
  dpt.dept_name,
  dmg.from_date,
  dmg.to_date
FROM dept_manager dmg
INNER JOIN employees emp ON
	dmg.emp_no=emp.emp_no
INNER JOIN departments dpt ON
	dmg.dept_no=dpt.dept_no
ORDER BY dept_name;

SELECT dpt.dept_name,
emp.last_name,
emp.first_name,
dmg.emp_no
FROM departments dpt
INNER JOIN dept_manager dmg ON
	dpt.dept_no=dmg.dept_no
INNER JOIN employees emp ON
	dmg.emp_no=emp.emp_no
ORDER BY dept_name;

SELECT *
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'

SELECT dpt.dept_name,
emp.last_name,
emp.first_name,
dmg.emp_no
FROM departments dpt
JOIN dept_manager dmg ON
	dpt.dept_no=dmg.dept_no
JOIN employees emp ON
	dmg.emp_no=emp.emp_no
WHERE dept_name='Sales'

SELECT dpt.dept_name,
emp.last_name,
emp.first_name,
dmg.emp_no
FROM departments dpt
JOIN dept_manager dmg ON
	dpt.dept_no=dmg.dept_no
JOIN employees emp ON
	dmg.emp_no=emp.emp_no
WHERE dept_name='Sales' OR dept_name='Development'
ORDER BY dept_name;

SELECT last_name, COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Frequency" desc;