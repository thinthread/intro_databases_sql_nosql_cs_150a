
/* 
Stephanie Boyette
*/


/*  TASK 01 */
select * from zoo_2016;

/*  TASK 02  */
delete from zoo_2016 where z_id > 100; select * from zoo_2016;


/*  TASK 03 */

insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values('999', 'Spot', 'Turtle', '505.25', '2012-05-15', '2014-05-16');
insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values('555', 'Archmidise', 'Fish', '50.00', '2012-03-25', '2014-03-29');
insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values('222', 'Zod', 'Shrimp', '50003.00', '2017-02-25', '2018-03-25');

select * from zoo_2016;

/*  TASK 04 */

Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(101, 'Moo', 'Cow', 2000.01, '2016-06-15', '2016-09-01');
Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(102, 'Meo', 'Cat', 2000.20, '2017-06-15', '2018-09-01');
Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(103, 'Ruff', 'Dog', 200.01, '2009-01-01', '2009-01-01');
Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(200, 'Andy', 'Rabbit', 350.00, '2015-10-15','2016-01-06');
Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(201, 'Brian', 'Tiger', 5000.00, '2015-10-05','2016-01-06');
Insert Into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(202, 'Carl', 'Lion', 5000.00, '2016-08-13','2016-01-06');


/*  TASK 05 */
select z_id, z_name, z_type, z_cost, z_dob, z_acquired from zoo_2016;

/*  TASK 06 */
select z_type, z_name, z_cost from zoo_2016 order by z_type, z_name;

/*  TASK 07 */
select z_id, z_name, z_dob from zoo_2016 where z_type='Zebra' order by z_dob desc;

/*  TASK 08 */
SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE='BASE TABLE';

/*  TASK 09 */
Select column_name
From INFORMATION_SCHEMA.COLUMNS 
Where TABLE_NAME = 'zoo_2016';

/*  TASK 10 */
Select * 
From INFORMATION_SCHEMA.COLUMNS 
Where TABLE_NAME = 'zoo_2016';



/* Testing stuff*/

select 
z_id
, extract ( month FROM z_dob ) as "Birth Month"
, z_dob
, z_name as "Name"
from zoo_2016
order by extract ( month from z_dob ) ;