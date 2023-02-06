use employees;
# Q1)Write SQL Code to count the number of employees – 1 pts
select count(*) from employees;
# Q2)Write SQL Code to output the current name of all of the departments -2 pts
select dept_name from departments;
# Q3) How many employees are in Finance? -2 pts
select count(emp_no) from dept_emp, departments where departments.dept_name = "Finance" and  dept_emp.dept_no = departments.dept_no;
# Q4) How many women work in development? – 3 pts
select count(employees.emp_no) from employees, departments, dept_emp where employees.emp_no = dept_emp.emp_no and departments.dept_name = "Development" and dept_emp.dept_no = departments.dept_no and employees.gender = "F";
# Q6) What is the average salary for Marketing? 4 pts
select  avg(salary) from salaries;
# Q7) What is the lowest salary in the company, who is it and what is their title and department? 5 pts
select first_name, last_name, title, dept_name from employees, departments, dept_emp, titles, salaries where employees.emp_no = dept_emp.emp_no and employees.emp_no = salaries.emp_no and dept_emp.dept_no = departments.dept_no order by salary limit 1;
# Q8) Who is the oldest person at the company and what is their age? 5 pts
select first_name, last_name, year(Current_Date()) - year(birth_date) as "Age" from employees order by birth_date limit 1;
