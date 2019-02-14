/* Selecting Columns  and Sorting */

/* 
Selecting Columns 

Clause FROM  - identify the table that supplies the data
Clause SELECT - identify the columns to be returned

NOTE:
    Sells that are not required to have data will show as an empty cell.
*/

/* You can display columns in any order, cells with null values will display as empty*/
SELECT z_type, z_name FROM zoo_2016;

/* Display dates and numeric values - The default displays for dates uses a format with 
a two digit day and threee letter month and a two digit year. */
SELECT z_dob, z_cost, z_name FROM zoo_2016;


/*
Selecting ALL columns

Symbol * - indicates all columns and rows

NOTE:
    * is usefull for viewing small tables, but not large ones
    Also bad ide for EMBEDED SQL if the table design has changed
        - EMBEDED SQL - Refers to SQL statements might be included inside of other units of code
        - You also have to consider that someone might reorder the column positions in the table 
          then you query produces a different result with a SELECT * statement
*/

SELECT * FROM zoo_2016;

/*
Columns Aliases
    Default - HEADERS are the columns atribute names displayed in uppercase letter at the top of a column(s)

    Column Aliases are limited to 30 character, are upper case

    Asign an alias the AS command
*/


/* Alias name NOT in '' wil return upper case */
SELECT 
    z_id 
,   z_dob AS BirthDate
,   z_cost AS Price
,   z_name AS NAME
FROM zoo_2016;

/* OR alias name in '' will return lower and upper case, the way you write it including special
symmbols */

SELECT 
    z_id 
,   z_dob AS "Date of birth"
,   z_cost AS "Price $"
,   z_name AS "Name"
FROM zoo_2016;


-- Sorting the output display

/* Clause ORDERED BY - to order/control which rows are displayed 
        Can order by:
            a column
            a column alias
            the numeric position of the column in the SELECT( not alwasy a good idead)
            a calculated column expression

        NOTE:
            If you have two columns with the same alias you get an error message
            if two rows have the same value for the ORDER BY clasue then they will random order
                relative to themselvs 
            Two level sort - a kind of nested/secondary is an option to address the just
            mentioned issue

*/

-- ascending order
SELECT 
    z_id 
,   z_dob AS "Date of birth"
,   z_cost AS "Price $"
,   z_name AS "Name"
FROM zoo_2016
ORDERED BY z_cost; /* note - returns values in ascending order, smallest to bigest */


-- decending order
SELECT 
    z_id 
,   z_dob AS "Date of birth"
,   z_cost AS "Price $"
,   z_name AS "Name"
FROM zoo_2016
ORDERED BY z_cost DESC; /* note - returns values in ascending order, bigest to smallest */


-- Two level sort 
/* The first sort is the key - the second sort only exicutes if two or more values from the first 
sort have the same value. 
    Note: 
        Sorting in Oricle and SQL are case sensative - all upper case will display at the top
        all lower case as the second value sort at the bottome

        ex:
            'Armadillo'     490
            'Cat'           60
            'Zerbra'        2500.25
            'armadillo'     490
            'cat'           60
            'cat'           45
            'zebra'         2000.50
            'zebra'         2000.50
*/

SELECT 
    z_id 
,   z_dob AS "Date of birth"
,   z_cost AS "Price $"
,   z_name AS "Name"
FROM zoo_2016
ORDER BY z_type, z_cost DESC;


-- NULL values in sorting
/* Nulls sort as a high-valued data item */

/* Ascending order

ex:
    Armadillo           Abigail
    armadillo           Anders
    armadillo           Anne
    Giraffe             Arnold
    Giraffe             Dewey
    Zebra               Dewey
    Giraffe             Geoff
    Zebra               Huey
    Lion                Lenora
    Lion                Leon
    Lion                Leon
    Zebra               Louie
    Giraffe             Sally Robinson
    Giraffe             Sam
    Lion
    Giraffe
    Lion
    Horse
    Lion
    Giraffe

*/

SELECT
    z_type As "Type"
,   z_name As "Name"
FROM zoo_2016
ORDER BY z_name;


/* NULLS FIRST sort in ascending order
ex:

    Lion
    Lion
    Lion
    Giraffe
    Giraffe
    Horse
    Armadillo       Abigail
    armadillo       Anders
    armadillo       Anne
    Giraffe         Arnold
    Giraffe         Dewey

*/

SELECT
    z_type As "Type"
,   z_name As "Name"
FROM zoo_2016
ORDER BY z_name NULLS FIRST;

/*  DESC NULLS FIRST 
ex:

Giraffe
Lion
Giraffe
Lion
Lion
Horse
Giraffe     Sam
Giraffe     Sally Robinson
Zebra       Louie
Lion        Leon
Lion        Leon
Lion        Lenora
Zebra       Huey
Giraffe     Geoff
Zebra       Dewey
Giraffe     Dewey
Giraffe     Arnold
armadillo   Anne
armadillo   Anders
Armadillo   Abigail

*/


-- Sort by date

/* Sort by date DESC */
Select
 z_id
, z_dob as "BirthDate"
, z_name as "Name"
From zoo_2016
ORDER BY z_dob DESC;

/*
    Z_ID    BirthDate   Name
---------- --------- ---------------
     47     10-JAN-15
     44     02-JUN-14   Dewey
     23     15-MAY-14   Sam
     85     15-MAY-14   Sally Robinson
     257    15-MAY-14   Arnold
     57     25-MAR-14   Lenora
     52     06-JUN-13   Dewey

*/


/* Sort by alias 
    - Oracle allows you to sort by an alias. But if this is a quoted alias, 
    then the sort key must also be a quoted alias */

Select
 z_id
, z_dob as "Date of Birth"
, z_name as "Name"
From zoo_2016
ORDER BY "Date of Birth";

/*
ex: 
    Z_ID BirthDate Name
---------- --------- ---------------
 259    15-MAY-02
 260    15-MAY-02   Geoff
 56     25-FEB-10   Leon
 45     02-JAN-13   Louie
 25     15-JAN-13   Abigail
 370    15-JAN-13   Anders
 371    15-JAN-13   Anne
 375    25-FEB-13
 372    25-FEB-13   Leon
 374    25-FEB-13
 373    25-FEB-13
 258    15-MAY-13
 43     02-JUN-13   Huey
 52     06-JUN-13   Dewey
 57     25-MAR-14   Lenora
 85     15-MAY-14   Sally Robinson
 257    15-MAY-14   Arnold
 23     15-MAY-14   Sam
 44     02-JUN-14   Dewey
 47     10-JAN-15

*/


-- Sort by Column Number
/* Oracle allows you to sort by number
    Note: 
        -This is generally considered poor style since it is easyt o 
        rearange the column in the select and forget to adjust the ORDER BY clause

        - You want o write SQK that is easier to correctly and harder to write incorectly

*/

/* Sort by z_type values then by z_name vlaues */
Select
 z_id
, z_type
, z_name
From zoo_2016
ORDER BY 2,3;

/* sort by column 2(z_type) and 3(z_name)
ex:
     Z_ID       Z_TYPE                Z_NAME
---------- ------------------------- ---------------
        25      Armadillo               Abigail
        257     Giraffe                 Arnold
        52      Giraffe                 Dewey
        260     Giraffe                 Geoff
        85      Giraffe                 Sally Robinson
        23      Giraffe                 Sam
        258     Giraffe
        259     Giraffe
        47      Horse
        57      Lion                    Lenora
        56      Lion                    Leon
        372     Lion                    Leon
        374     Lion
        375     Lion
        373     Lion
        44      Zebra                   Dewey
        43      Zebra                   Huey
        45      Zebra                   Louie
        370     armadillo               Anders
        371     armadillo               Anne

*/

