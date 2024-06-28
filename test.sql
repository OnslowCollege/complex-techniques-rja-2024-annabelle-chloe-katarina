-- Create egg shop database.
CREATE DATABASE egg_shop;

-- show all the databases created
SHOW DATABASES;

-- Create table 'user_2'.
CREATE TABLE user_2 (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY
);

USE egg_shop;  -- uses the egg shop database

SHOW TABLES;  -- shows table of chosen database

DESCRIBE user_2;  -- shows the columns of table 'user_2'

ALTER TABLE user_2 ADD first_name VARCHAR(50) NOT NULL  -- adds new column first name
ALTER TABLE user_2 ADD last_name VARCHAR(50) NOT NULL  -- adds new column last name