# aggregate functions:

select count(*) from employees
where gender = 'F';


# What are the salary statistics for each employee?
select avg(salary), max(salary), min(salary), count(salary) from salaries;


-- GROUPBY
-- group by can only contain the columns by which you group by + plus some aggregration
-- of other variables/columns

select gender from employees
group by gender;

select first_name from employees
group by first_name;

# Find average salary for each employee:
select emp_no, avg(salary) from salaries
group by emp_no;

# is the average salary different for different genders:
# join the salaries and employees table and then group by gender
select gender, avg(salary), format(stddev(salary), 2) from employees
join salaries using (emp_no)
group by gender;

-- HAVING (Filtering aggregated results from group by)

# show emp_no and avg salary only when avg salary is greater than 50k
select emp_no, avg(salary) as avg_salary from salaries
group by emp_no
having avg_salary > 50000;

# Another example
SELECT last_name, count(*) AS n_same_last_name
FROM employees
GROUP BY last_name
HAVING n_same_last_name < 150;
