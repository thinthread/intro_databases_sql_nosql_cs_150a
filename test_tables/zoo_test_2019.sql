CREATE TABLE zoo_test_2019 (
    z_id INTEGER NOT NULL,
    z_name CHAR(25) NULL,
    z_type CHAR(25) NOT NULL,
    z_cost NUMERIC(7 , 2 ) NOT NULL,
    z_dob DATE NOT NULL,
    z_acquired DATE NOT NULL
);
/*  inserts for the zoo_2016 table */
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(23, 'Sam', 'Giraffe', 5000.00, '2014-05-15','2014-05-15');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(25, 'Abigail', 'Armadillo', 490.00, '2013-01-15','2013-04-15');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(56, 'Leon', 'Lion', 5000.00, '2010-02-25','2010-03-25');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(57, 'Lenora', 'Lion', 5000.00, '2014-03-25','2014-03-31');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(85, 'Sally Robinson', 'Giraffe', 5000.25, '2014-05-15','2014-05-15');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(43, 'Huey', 'Zebra', 2500.25, '2013-06-02','2014-06-02');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(44, 'Dewey', 'Zebra', 2500.25, '2014-06-02','2014-06-02');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(45, 'Louie', 'Zebra', 2500.25, '2013-01-02','2013-01-02');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(47, null, 'Horse', 490.00,'2015-01-10','2015-01-15');
Insert Into zoo_test_2019 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) Values(52, 'Dewey', 'Giraffe',3750.00,'2013-06-06', '2013-07-12');