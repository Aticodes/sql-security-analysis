-- Retrieve failed login attempts after business hours
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = FALSE;

-- Retrieve login attempts on suspicious dates
SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-09'
OR login_date = '2022-05-08';

-- Retrieve login attempts outside Mexico
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';

-- Retrieve Marketing employees in East building
SELECT *
FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';

-- Retrieve employees in Finance or Sales
SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';

-- Retrieve employees not in IT
SELECT *
FROM employees
WHERE department != 'Information Technology';
