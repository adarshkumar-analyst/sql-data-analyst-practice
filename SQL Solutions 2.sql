
-- 1. Retrieve all employees from the Employees table.
select * 
 from employees;

-- 2. Show the names and salaries of all employees.
select Name,
       salary
 from employees;      

-- 3. Find employees with salary greater than 50000.
select * 
 from employees
  where salary>50000;

-- 4. Display employees hired after 2021.
select * 
 from employees
  where hire_date >"2021-12-31";

-- 5. Count the total number of employees.
select count(*) as total_employees
 from employees;

-- 6. Find the average salary of employees.
select round( avg(salary),2) as average_salary
from employees;

-- 7. Find the maximum salary in the company.
select max(salary) as maximum_salary
from employees;

-- 8. Count the number of employees in each department.
select department_id,
       count(*) as Number_of_Emp
from employees
group by department_id;       

-- 9. Show employee names along with their department names.
select e.name,d.department_name
from employees e 
left join departments d 
on e.department_id=d.department_id;

-- 10. Find employees who work in the IT department.
select e.*
from employees e 
left join departments d 
on e.department_id=d.department_id
where d.department_name="IT";

-- 11. List employees who are working on more than one project.
select employee_id,
       count(project_id) as Project_Count
from projects
group by employee_id
having Project_Count>1;

-- 12. Find the total project budget handled by each employee.
select employee_id,
       sum(budget) as Total_budget
from projects
group by employee_id
order by employee_id;      

-- 13. Show employees whose salary is above the average salary.
select * 
 from employees
  where salary >(
				  select avg(salary)
                  from employees);

-- 14. Find employees who do not have any projects assigned.
select * 
 from employees
  where employee_id not in (
                             select employee_id
							from projects);

-- 15. Display the top 3 highest paid employees.
select *
from ( 
	  select *,
			 rank() over(order by salary desc) as rnk
      from employees)t
where rnk<=3;      

-- 16. Find the second highest salary in the company.
select max(salary) as second_highest_salary
from employees
where salary < (
                 select max(salary)
                 from employees);

-- 17. Show the highest paid employee in each department.
select e.*
from employees e
join (
    select department_id, max(salary) as max_salary
    from employees
    group by department_id
) t
on e.department_id=t.department_id
and e.salary=t.max_salary;      

-- 18. Find departments where the average salary is greater than 55000.
select e.department_id,
       d.department_name,
       avg(e.salary) as avg_salary
from employees e 
join departments d 
on e.department_id=d.department_id
group by e.department_id
having avg(e.salary)>55000;


-- 19. List employees who work on projects with budget greater than 30000.
select e.*
from employees e 
join projects p 
on e.employee_id=p.employee_id
where budget>30000;

-- 20. Find employees who joined before their department’s average hire date.
select *
from employees e
where hire_date < (
                 select avg(hire_date)
                 from employees
               where department_id = e.department_id);

-- 21. Show each employee with the number of projects they handle.
select e.employee_id,
       count(p.project_id) as project_count
from employees e
left join projects p
on e.employee_id=p.employee_id
group by e.employee_id;      

-- 22. Find employees whose salary is higher than their department average.
select *
 from employees e 
 where salary >(
                 select avg(salary) 
                 from employees
                 where department_id=e.department_id);
                 

-- 23. Rank employees based on salary using RANK().
select *,
       rank() over (order by salary desc) as "Rank"
from employees;       

-- 24. Show employees with the highest project budget they worked on.
select e.employee_id,
       e.name,
       max(p.budget) as highest_project_budget
from employees e
join projects p
on e.employee_id=p.employee_id
group by e.employee_id,e.name;
				

-- 25. Find the employee who manages the maximum total project budget.
select e.name,
	   p.employee_id,
       sum(budget) as total_budget
from employees e 
join projects p 
on e.employee_id=p.employee_id
group by p.employee_id,e.name
order by total_budget desc
limit 1;

-- 26. Find the department that has the highest total salary expense.
select department_id,
	   sum(salary) as total_salary
from employees
group by department_id
order by total_salary desc
limit 1;

-- 27. Find employees who earn the highest salary in the entire company.
select *
from employees
where salary = (
                select max(salary)
                from employees);

-- 28. Find the department that has the maximum number of employees.
select department_id,
	   count(employee_id) as total_emp
from employees
group by department_id
order by total_emp desc
limit 1;

-- 29. List employees who are working on projects but whose salary is less than 50000.
select *
from employees e 
join projects p 
on e.employee_id=p.employee_id
where e.salary<50000;


-- 30. Find the top 5 employees who handle the highest total project budget.
  select p.employee_id,
       sum(budget) as total_budget
from employees e 
join projects p 
on e.employee_id=p.employee_id
group by p.employee_id
order by total_budget desc
limit 5;

-- 31. Show the difference between each employee's salary and the average salary of their department.
select * ,
        avg(salary) over(partition by department_id) as avg_salary,
        salary-avg(salary) over(partition by department_id) as salary_diff
from employees;        


-- 32. Find employees who have worked on the highest number of projects.
select e.employee_id, e.name, COUNT(p.project_id) AS project_count
from Employees e
join Projects p
on e.employee_id = p.employee_id
group by e.employee_id, e.name
having COUNT(p.project_id) = (
    select MAX(project_count)
    from (
        select COUNT(project_id) as project_count
        from Projects
        group by employee_id
    ) t
);
       

