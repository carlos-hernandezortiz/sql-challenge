---1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no ,emp.last_name,emp.first_name,emp.sex,sal.salary FROM employees emp
INNER JOIN salaries sal ON emp.emp_no = sal.emp_no;

---2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date FROM employees WHERE hire_date LIKE '%/1986';

---3. List the manager of each department with the following information: department number, 
---department name, the manager's employee number, last name, first name.
SELECT deptmng.dept_no, dep.dept_name, deptmng.emp_no, emp.last_name, emp.first_name 
FROM dept_manager AS deptmng INNER JOIN departments AS dep ON deptmng.dept_no = dep.dept_no INNER JOIN
employees emp ON deptmng.emp_no = emp.emp_no;

---4. List the department of each employee with the following information: employee number, 
---last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name FROM employees emp INNER JOIN dept_emp 
ON emp.emp_no = dept_emp.emp_no INNER JOIN departments dep ON dept_emp.dept_no = dep.dept_no;

---5. List first name, last name, and sex for employees whose first name is "Hercules" 
---and last names begin with "B."
SELECT first_name, last_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

---6. List all employees in the Sales department, including their employee number, 
---last name, first name, and department name.
SELECT emp.emp_no,emp.last_name, emp.first_name,dep.dept_name FROM departments dep INNER JOIN dept_emp ON dept_emp.dept_no = dep.dept_no
INNER JOIN employees emp on dept_emp.emp_no = emp.emp_no WHERE dep.dept_name = 'Sales';

---7. List all employees in the Sales and Development departments, including their 
---employee number, last name, first name, and department name.
SELECT emp.emp_no,emp.last_name, emp.first_name,dep.dept_name FROM departments dep INNER JOIN dept_emp ON dept_emp.dept_no = dep.dept_no
INNER JOIN employees emp on dept_emp.emp_no = emp.emp_no WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

---8. In descending order, list the frequency count of employee last names, i.e., 
---how many employees share each last name.
SELECT last_name,count(last_name) AS RepeatedLastName FROM employees GROUP BY last_name ORDER BY RepeatedLastName DESC;






