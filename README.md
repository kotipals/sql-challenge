# sql-challenge

In this challenge we were asked to create a schema for data regarding departments, employees and their information. We were given data (csv files) and asked to create the tables based on them. 
For the tables I created one for each of the csv files that was provided. I added attributes according to the column names in the files. And then I assigned the types to the attributes accordingly. 
In the departments table I assigned the primary key to the dept_no. Although the dept_name is also unique and could be assigned as the primary key, there could be differences in the way that a dept_name could be spelled. The dept_no does not deal with such issues and is a better choice to be the primary key.
The same thing was done for the titles table where the title_id was assigned as the primary key.
The employees table was given the primary key emp_no. And the foreign key of emp_title_id. This table and a few other tables (department_employee and department_manager) reference the tables mentioned earlier and that was another reason to assign the primary key to only the dept_no and the title_id. If both the attributes in those tables were assigned as a composite key, then it would be an issue when referencing the emp_title_id and other attributes in other tables.
The same procedure was followed for the department_employee, department_manager, and salaries tables.
Once these tables were created, I uploaded the data from the csv files using the import/export option in the PgAdmin4 tool. All this data can be found in the department_employee_info_schema.sql file.

And then data analysis part is under the department_data_analysis.sql file.

I also created a ERD diagram which shows the relationships between the different tables and their attributes. A screenshot of this can be found in the departments_employee_info_ERD.png file.
 
