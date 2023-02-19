Select *
From PortfolioProject..countries

Select *
From PortfolioProject..departments

Select *
From PortfolioProject..dependents

Select *
From PortfolioProject..employees

Select *
From PortfolioProject..jobs

Select *
From PortfolioProject..locations

Select *
From PortfolioProject..regions

-- Using ORDER BY

Select *
From PortfolioProject..jobs
Order by max_salary desc

-- Using COUNT

Select COUNT(DISTINCT job_id) AS 'NumofJobTypes'
From PortfolioProject..employees


-- Using AVG

Select AVG(salary) as AvgSal
From PortfolioProject..employees

-- Employees with their dependents

Select employees.employee_id, employees.first_name, employees.last_name, employees.salary, dependents.first_name, dependents.last_name, dependents.relationship
From PortfolioProject..employees
Join PortfolioProject..dependents	
	ON PortfolioProject..employees.employee_id = PortfolioProject..dependents.employee_id

-- Employees with department info

Select employees.employee_id, employees.first_name, employees.last_name, employees.salary, departments.department_name, departments.location_id, locations.city, locations.state_province
From PortfolioProject..employees
Join PortfolioProject..departments	
	ON PortfolioProject..employees.department_id = PortfolioProject..departments.department_id
Join PortfolioProject..locations
	ON PortfolioProject..departments.location_id = PortfolioProject..locations.location_id
