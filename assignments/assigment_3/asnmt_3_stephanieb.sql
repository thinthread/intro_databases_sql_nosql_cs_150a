/*
Stephanie Boyette
Assignment 3
*/


/* Task 01: 
Show the client first and last name and phone number; 
skip all clients who do not have a value for the phone number. 
The display should be sorted by the client id.*/

SELECT cl_name_last AS 'Client First Name'
, cl_name_last AS 'Client Last Name'
FROM vt_clients
WHERE cl_phone IS NOT NULL order by cl_id;



/*Task 02: 
Display the service id of any services that were actually used(charged for) 
on an exam which were charged at a fee of $75 or more. Display each service id only once. */
SELECT distinct srv_id AS 'Service ID'
, ex_fee AS 'Charges'
from vt_exam_details
WHERE ex_fee >= 75;


/*Task 03: 
The vet wants a list of client ids for clients who have one or more reptiles 
(defined in the 150A_VetsTables.pdf) .  Display the client id and the animal type for these clients. 
The vet does not care how many animals the clients have, only the client id and types. 
Sort by the client id. */
select distinct cl_id, an_type
FROM vt_animals
Where an_type IN('snake', 'chelonian', 'crocodilian', 'lizard')
order by cl_id;

/*Task 04: 
We want to see the following data for each cat and dog: Client id, animal id, 
animal type and animal name.*/
select cl_id, an_id, an_type, an_name
from vt_animals
where an_type in('cat','dog');


/*Task 05: 
Display the exam id, exam date and service id and the fee charged for each exam done on a rodent. 
Read the 150A_VetsTables.pdf for the definition of the term 'rodent'. 
Order the rows by the exam id and service id.*/
select ED.ex_id, EH.ex_date, ED.srv_id, ED.ex_fee, AN.an_type
from vt_exam_details ED
join vt_exam_headers EH on ED.ex_id = EH.ex_id
join vt_animals AN on EH.an_id = AN.an_id
WHERE AN.an_type in('rodent','capybara', 'porcupine', 'doormouse')
order by ED.ex_desc, ED.srv_id;




/*Task 06: 
The vet is concerned about exams where the exam fee charged is less than $25.00 or more than $200.00. 
Show the client id, exam id and exam date, the service id and the exam fee for these exams. 
Order by the exam date and the service id.*/

SELECT AN.cl_id, EH.ex_id, EH.ex_date, ED.srv_id, ED.ex_fee
FROM vt_animals AN
join vt_exam_headers EH on AN.an_id = EH.an_id
join vt_exam_details ED on EH.ex_id = ED.ex_id
WHERE ED.ex_fee < 25 or ED.ex_fee > 200
order by EH.ex_date, ED.srv_id;


