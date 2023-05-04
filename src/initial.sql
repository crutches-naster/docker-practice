-- Step #1
-- Copy this into SQL query window to create database
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

-- Step #2
-- Select DB "test" in Adminer interface
-- Copy this into SQL query window to create table and records
CREATE TABLE IF NOT EXISTS students(
        id serial PRIMARY KEY,
        name  VARCHAR(100) NOT NULL,
        grade INT NULL );
INSERT INTO students(name, grade) VALUES ('Vasya', 50) ;
INSERT INTO students(name, grade) VALUES ('Petya', 40) ;
INSERT INTO students(name, grade) VALUES ('Kolya', 90) ;
