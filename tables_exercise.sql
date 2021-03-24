3. Use the employees database
    USE employees;

4. List all the tables in the database
    SHOW TABLES;

5. Explore the employees table. What different data types are present on this table?
    -DESCRIBE employees; 
    -int(11), date, varchar(14), varchar(16), enum('M','F')

6. Which table(s) do you think contain a numeric type column?
    -At first glance I would think `salaries` but upon further research, the tables `current_dept_emp`,
    `dept_emp`, `dept_emp_latest_date`, `dept_manager`, `employees`, `salaries`, and `titles` have a 
    numeric type column.

7. Which table(s) do you think contain a string type column?
    -I would think all except for `salaries` tables would have a string type column. Actually `salaries`
    and `dept_emp_latest_date` are the two tables that dont contain a string type column. All other
    tables did have a string type column.

8. Which table(s) do you think contain a date type column?
    -I would think all would have a date type column. All tables except for `departments` had a date
    type column.

9. What is the relationship between the employees and the departments tables?
    -The only relationship I saw was that they both had a emp_no and dept_no column respectively.
    I used SHOW CREATE TABLE employees; and SHOW CREATE TABLE departments; and 
    SHOW CREATE TABLE dept_emp; and DESCRIBE dept_emp; to discover this relationship.

10. Show the SQL that created the dept_manager table.
    -SHOW CREATE TABLE dept_manager;
    -CREATE TABLE `dept_manager` (
    `emp_no` int(11) NOT NULL,
    `dept_no` char(4) NOT NULL,
    `from_date` date NOT NULL,
    `to_date` date NOT NULL,
    PRIMARY KEY (`emp_no`,`dept_no`),
    KEY `dept_no` (`dept_no`),
    CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
    CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=latin1