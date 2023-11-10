SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        s.salary
FROM employees as e
    LEFT JOIN salaries as s
    ON (e.emp_no = s.emp_no)
;	


SELECT 	first_name, 
		last_name, 
		hire_date
FROM employees
WHERE hire_date LIKE '1986%';
;


SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
    ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
    ON (dm.emp_no = e.emp_no);
;


SELECT  d.dept_no,
		e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees as e
    INNER JOIN dept_emp as de
    ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
;


SELECT 	first_name, 
		last_name, 
		birth_date, 
		sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;



SELECT 	e.empl_no,
		e.last_name,
		e.first_name
FROM employees as e
    INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
;



SELECT 	e.empl_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees as e
    INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Developement'
;



SELECT 	last_name,
		COUNT(ladt_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;