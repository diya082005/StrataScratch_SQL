/* Given the education levels and salaries of a group of individuals, find what is the average salary for each level of education.
google_salaries
Preview
id	first_name	last_name	department	education	salary
376	Gary	Stokes	Accounting	Master	56760
377	Lorenzo	Cortez	Accounting	Doctorate	74127
*/
select education,salary,avg(salary) 
from google_salaries
group by education;