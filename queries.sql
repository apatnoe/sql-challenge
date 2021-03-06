-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
JOIN "Salaries" s
ON (e.emp_no = s.emp_no)

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM "Employees"
Where hire_date between '1/1/1986' AND '12/31/1986'
ORDER BY hire_date

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, d.dept_name, mgr.emp_no, e.last_name, e.first_name
FROM "Departments" d
JOIN "Dep_Managers" mgr
ON (d.dept_no = mgr.dept_no)
JOIN "Employees" e
ON (mgr.emp_no = e.emp_no)
	
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dep_Employees" de
JOIN "Employees" e
ON (de.emp_no = e.emp_no)
JOIN "Departments" d
ON (de.dept_no = d.dept_no)

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex from "Employees"
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" d
JOIN "Dep_Employees" de
ON (d.dept_no = de.dept_no)
JOIN "Employees" e
ON (de.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" d
JOIN "Dep_Employees" de
ON (d.dept_no = de.dept_no)
JOIN "Employees" e
ON (de.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY dept_name

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC



