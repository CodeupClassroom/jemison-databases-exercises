
-- Subqueries lesson
-- https://docs.google.com/presentation/d/1ymLGKr_eXR-u6oSqChXlRmMbAcpEOFkMLT91Eb56gSQ/edit?usp=sharing


/* A subquery is a SELECT statement within another statement.
A subquery can return a scalar (a single value), a single row, a single column, or a table (one or more rows of one or more columns).
These are called scalar, column, row, and table subqueries. */

# scalar example:

-- what is overall average salary?
 
 select avg(salary) from salaries;
 
 -- find all employees whose current salary > overall average salary
select * from salaries
join employees using (emp_no)
where salary > (select avg(salary) from salaries)
and salaries.to_date > now();



-- Column Subqueries Return a Single Column
--  find all the department current managers names and birth dates

# get emp_no for dept managers

select emp_no from dept_manager
where to_date > now();

select first_name, last_name, birth_date
from employees 
where emp_no IN (select emp_no from dept_manager
where to_date > now());

-- Table Subqueries Return an Entire Table

-- find all employees with first name starting with 'geor.
-- Then join with salary table and list first_name, last_name and salary

select * from employees
where first_name like 'geor%';

select table1.first_name, table1.last_name, salary 
from (select * from employees
where first_name like 'geor%') as table1
join salaries using (emp_no);

# subquery in select statement example
select *, (select 2+2) as four
from salaries;
 
# another example 
select *, (select avg(salary) from salaries where to_date > now())
from salaries;
 
 # this will error out
 select *, avg(salary)
 from salaries;
 