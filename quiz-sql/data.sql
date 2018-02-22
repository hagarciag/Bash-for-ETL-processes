DROP DATABASE IF EXISTS quiz;
CREATE DATABASE quiz;
USE quiz;
CREATE TABLE IF NOT EXISTS franquicia(ccard VARCHAR(16),ccn VARCHAR(19),key1 INT,pin INT,quota INT,validthru DATE);
CREATE TABLE IF NOT EXISTS emisor(Bank VARCHAR(29),ccn VARCHAR(19),ssn VARCHAR(11)); 
CREATE TABLE IF NOT EXISTS persona(ssn VARCHAR(15),phone VARCHAR(16),city VARCHAR(25),maritalstatus VARCHAR(10),fullname VARCHAR(20),birthdate DATE);
LOAD DATA LOCAL INFILE 'insertar aquí la ruta' INTO TABLE emisor FIELDS TERMINATED BY ',' IGNORE 1 LINES (bank,ccn,ssn);
LOAD DATA LOCAL INFILE 'insertar aquí la ruta' INTO TABLE franquicia FIELDS TERMINATED BY ',' IGNORE 1 LINES (ccard,ccn,key1,pin,quota,validthru);
LOAD DATA LOCAL INFILE 'insertar aquí la ruta' INTO TABLE persona FIELDS TERMINATED BY ',' IGNORE 1 LINES (ssn,phone,city,maritalstatus,fullname,birthdate);





