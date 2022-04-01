use employees;

-- STRING FUNCTIONS:
-- https://dev.mysql.com/doc/refman/5.7/en/string-functions.html

-- CASE CONVERSION
select lower(first_name), upper(last_name) from employees;

-- CONCAT
-- e.g. concat first_name and last_name to create a username:
select lower(concat(first_name,'_' ,last_name)) as username from employees;

-- we can also concatenate columns with other pieces of string

select concat(lower(first_name),'.' ,lower(last_name), '@company.com') as email from employees;

-- SUBSTRING
-- Substring function allows us to obtain part of a string
select concat(substr(first_name,1,1), last_name) as username from employees;

-- create a username for employees using firstletter of first_name, an underscore and lastname
select lower(concat(substr(first_name,1,1), '_',last_name)) as username from employees;

-- Replace
SELECT REPLACE('abcdefgabc', 'abc', '123');

-- DATETIME FUNCTIONS
-- https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html

-- we can get the day or month name of the week from a date (or string that matches the date format)
select dayname("1970-01-01");
select monthname("2022-03-31");

-- Current date, time or timestamp
select curdate();
select current_time();
select current_timestamp();


-- how many years has it been since each employee's original hire date and today?
select *, datediff(curdate(), hire_date)/365 as tenure from employees;

-- unix time is the number of seconds since 1970-01-01
select unix_timestamp('1971-01-01');

-- We can add our function outputs as new columns onto existing output e.g days someone was born
select *, dayname(birth_date) as day_of_birth from employees;

-- NUMERIC/AGGREGATE FUNCTIONS e.g min, max, average, stddev, count, sum etc
select avg(salary), min(salary), max(salary), stddev(salary) from salaries;