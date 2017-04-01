-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_department (
  id integer PRIMARY KEY,
  name varchar (60),
  description varchar (150)
);


INSERT INTO employee_department (id, name, description) VALUES
(1,'Produccion','Fabrica la produccion y mantiene el stock'),
(2,'Compras','Adquiere materias prima'),
(3,'Administracion','contabiliza las facturas emitidas y recibidas'),
(4,'Financiero','consigue la financiacion para la empresa'),
(5,'Maketing','Colabora con el comercial para conseguir mas ventas'),
(6,'Recursos Humanos','gestiona a las personas para garantizar el cumplimiento de las funciones');

CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar (60),
  last_name varchar (150),
  -- cambio para poder asignarle a los empleados su departamento
  id_department integer REFERENCES employee_department (id),
  --cambio para poder asignar un jefe a los empleados
  id_boss integer REFERENCES employee (id)
);

INSERT INTO employee (id,first_name,last_name,id_department,id_boss) VALUES
(1,'Winder','Morillo',6,3),
(2,'Jose','Fernandez',2,1),
(3,'Rosa','Olmedo',4,1),
(4,'Wilmer','Yepez',5,1);

-- ...
