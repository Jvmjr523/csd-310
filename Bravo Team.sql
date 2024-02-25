/*
    Title: db_init_2022.sql
    Author: Professor Sampson
    Date: 1 Aug 2022
    Description: movies database initialization script.
*/

-- drop database user if exists 
DROP USER IF EXISTS 'wilson_financial'@'localhost';


-- create movies_user and grant them all privileges to the movies database 
CREATE USER 'wilson_financial'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Financial!';

-- grant all privileges to the movies database to user movies_user on localhost 
GRANT ALL PRIVILEGES ON bravo.* TO 'wilson_financial'@'localhost';


-- drop tables if they are present
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS asset;
DROP TABLE IF EXISTS transaction;




-- create the studio table 
CREATE TABLE client (
    client_name      INT             NOT NULL        AUTO_INCREMENT,
    client_address   VARCHAR(75)     NOT NULL,
    client_phone     INT  		     NOT NULL,
    client_email     VARCHAR(200)    NOT NULL,
    client_startdate INT    	     NOT NULL,
	client_ID        INT			 NOT NULL,
    PRIMARY KEY (client_id)
); 


INSERT INTO client(client_name, client_address, client_phone,  client_email, client_startdate)
	VALUES('Gus Garcia', '123 Wag Dr Houston, TX', '713-784-0000', 'Gusser@gmail.com', '11/26/2020');
    
    