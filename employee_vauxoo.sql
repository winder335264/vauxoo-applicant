-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_hobby (
  id integer PRIMARY KEY,
  name varchar (60),
  description varchar (150)
);


INSERT INTO employee_hobby (id,name,description) VALUES
(1,'bailar','estimula el sentido de la responsabiliadad'),
(2,'Fotografia','tomar fotos'),
(3,'correr','te ayuda a relajarte y mantener en forma');  
  

CREATE TABLE employees_hobbies (
employee_id integer REFERENCES employee (id),
hobby_id integer REFERENCES employee_hobby (id),
PRIMARY KEY (employee_id,hobby_id)
);

INSERT INTO employees_hobbies (employee_id,hobby_id) VALUES 
(1,2),
(1,3),

(2,3),
(2,1),

(3,1),
(3,2),

(4,1),
(4,3);
-- ...
