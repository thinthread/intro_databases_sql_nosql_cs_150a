/* 
Stephanie Boyette
*/


/* task 1  		For each row in the staff table, display the first name and last name of each staff person and their job title. */
select stf_name_first, stf_name_last, stf_job_title
from vt_staff;


/* task 2        Display the animal id with a column alias of "ID", the animal name with a column alias of 
"Name", the animal type with the column alias "Animal Type", and the birth date with a column alias 
of "BirthDate" for each animal. Display the data with the oldest animals first.*/
select an_id AS 'ID'
, an_name AS 'Name'
, an_type AS 'Animal Type'
, an_dob AS 'BirthDate'
from vt_animals 
order by an_dob desc; 


/* task 3         display different types of animals we currently have registered with the clinic. 
Display the animal types from the animals table. Suppress any duplicates.*/
select distinct an_type
FROM vt_animals;


/* task 4         For each row in the services table, display the service type and description. 
The rows should be sorted by the service type and list price.*/
select srv_type
, srv_desc
from vt_services
order by srv_type, srv_list_price;


/* task 5         Display the exam id, the service id, and the fee charged for each service performed on an exam. 
Order by the exam id and then by the fee.*/
select ex_id
, srv_id
, ex_fee
from vt_exam_details
order by ex_id, ex_fee;


/* task 6         Display the animal name and animal type and animal date of birth values from the animals table. 
Suppress any duplicates. Sort the display in order by the type as the first sort key and the name as the second sort key.*/
select distinct an_name
, an_type
, an_dob
from vt_animals
order by an_type, an_name;


/* task 7         For each exam, display the animal id, the exam date and the id of the staff person who did the exam. 
Display the rows in order by the staff id; use the exam date as the second sort key with the earlier exams first. 
Use the data in the exam headers table. */
select an_id
, ex_date
, stf_id
from vt_exam_headers
order by stf_id, ex_date;


/* task 8         list of the different locations for the clients. 
For this task, the term location refers to the city and state. 
The display will include the client state in the first column and city in the second column and will not include duplicate rows. 
Sort the result set by state and city.*/
select distinct cl_state
, cl_city
from vt_clients
order by cl_state, cl_city;