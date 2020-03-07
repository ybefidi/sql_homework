1. List the following details of each employee: 

employee number, last name, first name, gender, and salary.

	select e.emp_no, e.last_name, e.first_name, e.gender, s.salary

	from salaries AS s

	INNER JOIN employees AS e ON

	e.emp_no=s.emp_no;

2. List employees who were hired in 1986.

	SELECT * FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

3. List the manager of each department with the following information: department number, department name, 

the manager's employee number, last name, first name, and start and end employment dates.

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date, dm.to_date

FROM departments AS d

JOIN dept_manager AS dm

	ON(dm.dept_no = d.dept_no)

		JOIN employees AS e

		ON(e.emp_no = dm.emp_no);

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name

FROM departments AS d

JOIN dept_emp AS de

	ON(de.dept_no = d.dept_no)

		JOIN employees AS e

		on(e.emp_no = de.emp_no)

		order by 1;

5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM employees WHERE first_name='Hercules'

	and last_name like 'B%'

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 	e.emp_no, e.last_name, e.first_name, d.dept_name

FROM departments AS d

JOIN dept_emp AS de

	ON(de.dept_no = d.dept_no)

		JOIN employees AS e

		on(e.emp_no = de.emp_no)

		WHERE dept_name='Sales'

		ORDER by 1;

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 	e.emp_no, e.last_name, e.first_name, d.dept_name

FROM departments AS d

JOIN dept_emp AS de

	ON(de.dept_no = d.dept_no)

		JOIN employees AS e

		on(e.emp_no = de.emp_no)

		WHERE (dept_name='Sales') OR (dept_name='Development')

		ORDER by 1;

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "Total Name Count" 

from employees

group by last_name

order by 2 desc;