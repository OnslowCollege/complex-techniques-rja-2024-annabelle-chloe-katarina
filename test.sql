-- Create egg shop database.
CREATE DATABASE egg_shop;

-- Create table 'user_2'.
CREATE TABLE user_2 (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY
);

-- Show all the databases created.
SHOW DATABASES;

USE egg_shop;

SHOW TABLES;

DESCRIBE user_2;

ALTER TABLE user_2 ADD first_name VARCHAR(50) NOT NULL