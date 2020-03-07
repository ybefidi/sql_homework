employees(

	emp_no VARCHAR(30) NOT NULL PRIMARY KEY,

	birth_date VARCHAR(30) NOT NULL,

	first_name VARCHAR(30) NOT NULL,

	last_name VARCHAR(30) NOT NULL,

	gender VARCHAR(30) NOT NULL,

	hire_date VARCHAR(30) NOT NULL

);


departments(

	dept_no VARCHAR(30) NOT NULL Primary KEY,

	dept_name CHARACTER varying(30) NOT NULL

	

);


dept_emp(

	emp_no VARCHAR(30) NOT NULL,

	dept_no VARCHAR(30) NOT NULL,

	from_date VARCHAR(30) NOT NULL,

	to_date VARCHAR(30) NOT NULL,

	PRIMARY KEY (emp_no),

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),

	PRIMARY KEY (dept_no),

	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);


dept_manager(

	dept_no VARCHAR(30) NOT NULL,

	emp_no VARCHAR(30) NOT NULL,

	from_date VARCHAR(30) NOT NULL,

	to_date VARCHAR(30) NOT NULL,

	PRIMARY KEY (emp_no),

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),

	PRIMARY KEY (dept_no),

	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);


salaries(

	emp_no VARCHAR(30) NOT NULL,

	salary VARCHAR(30) NOT NULL,

	from_date VARCHAR(30) NOT NULL,

	to_date VARCHAR(30) NOT NULL,

	PRIMARY KEY (emp_no),

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),

);


titles(

	emp_no VARCHAR(30) NOT NULL,

	title VARCHAR(30) NOT NULL,

	from_date VARCHAR(30) NOT NULL,

	to_date VARCHAR(30) NOT NULL,

	PRIMARY KEY (emp_no),

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),

);