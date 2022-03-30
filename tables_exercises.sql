#Q3 - Use the employees database
USE employees;

#Q4 - List all the tables in the database
SHOW TABLES;

#Q5- Data Types: INT, DATE, VARCHAR, ENUM
DESCRIBE employees;

#Q6- Tables likely to contain a numeric type column: All of them will likely contain at least an ID column, and the salaries table will contain a numeric column for the employee salary amount
#Tables actually containing a numeric type column: dept_emp, dept_manager, employees, employees_with_departments, salaries, and titles. (current_dept_emp and dept_emp_latest_date could not be inspected due to no permission)

#Q7- Tables likely to contain a string type column: Departments (describing the department name), employees (describing the employee name), titles (the name of the job)
#Tables actually containing a string type column: departments, dept_emp, dept_manager, employees, employees_with_departments, titles. (current_dept_emp and dept_emp_latest_date could not be inspected due to no permission)

#Q8- Tables likely to contain a date type column: All of them except for departments and employees_with_departments, as those are simply describing which department employees are a part of.
#Tables actually containing a DATE type column: dept_emp, dept_manager, employees, salaries, titles. (current_dept_emp and dept_emp_latest_date could not be inspected due to no permission)

#Q9- What is the relationship between the 'employees' and 'departments' tables? Directly there are no similarly labeled columns, but some of the information contained in each table is combined into the table employees_with_departments, dept_manager, and dept_emp

#Q10 - Show the SQL that created the dept_manager table.
SHOW CREATE TABLE dept_manager;