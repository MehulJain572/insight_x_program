create database insightx;
use insightx;
#creating a table for desired operation:
#scenario: A sales company has came in a college and has recruited students from every department.
create table employee(
    employee_id int PRIMARY KEY AUTO_INCREMENT,
    employee_name varchar(20) not null,
    department varchar(20) not null,
    sales_amount int not null
);

#inserting some data in the table:
insert into employee(employee_name,department,sales_amount)values('mehul','mme',45000);
insert into employee(employee_name,department,sales_amount)values('nakul','mme',38000);
insert into employee(employee_name,department,sales_amount)values('varun','mme',47000);
insert into employee(employee_name,department,sales_amount)values('vishal','ee',35000);
insert into employee(employee_name,department,sales_amount)values('anand','ee',52000);
insert into employee(employee_name,department,sales_amount)values('naman','cse',55000);
insert into employee(employee_name,department,sales_amount)values('roshan','cse',50000);
insert into employee(employee_name,department,sales_amount)values('ritik','civil',40000);
insert into employee(employee_name,department,sales_amount)values('mehul','mme',5000);
UPDATE employee SET sales_amount = 55000 WHERE employee_name = 'roshan';
#CTE TO CALCULATE TOTAL SALES PER EMPLOYEE and using row_number() and partition by :
WITH final_sales as (SELECT employee_name,department,sum(sales_amount) as total_sales from employee group by employee_name,department)
select employee_name,department,total_sales, ROW_NUMBER() over(PARTITION BY department order by total_sales desc) as ranks from final_sales;

#we can use dense rank also in place of row_number() if we want to handle tie's in data more efficiently.









