Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker
table.

select 
LEFT(First_name,3) as starting_character
from Workertable

Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
column ‘Amitabh’ from Worker table.

Select charindex(First_name, BINARY 'a') from Workertable where FIRST_NAME = 'Amitabh';


 Q-3. Write an SQL query to print the name of employees having the highest salary in each
department.

select salary,department ,First_name
from Workertable
where salary IN
	(Select max(salary) as sls
	from Workertable
	Group by Department)
