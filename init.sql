CREATE DATABASE Nesbytnov;

\c Nesbytnov

CREATE TABLE test_table (
    name VARCHAR(10),
    surname VARCHAR(50),
    city VARCHAR(50),
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Alice', 'Smith', 'Moscow', 25),
('Bob', 'Brown', 'New York', 30),
('Tom', 'Williams', 'London', 22),
('Jerry', 'Davis', 'Berlin', 19),
('Mira', 'Garcia', 'Madrid', 27),
('Max', 'Miller', 'Paris', 35),
('Sophia', 'Rodriguez', 'Rome', 28),
('Leo', 'Martinez', 'Lisbon', 40),
('Emma', 'Hernandez', 'Barcelona', 21),
('Daniel', 'Lopez', 'Tokyo', 26),
('Olga', 'Gonzalez', 'Sydney', 22),
('Maya', 'Wilson', 'Mexico City', 23),
('Luke', 'Moore', 'San Francisco', 29),
('Ivy', 'Taylor', 'Beijing', 25),
('Jack', 'Anderson', 'Cape Town', 24),
('Noah', 'Thomas', 'Paris', 33),
('Zoe', 'Jackson', 'Amsterdam', 31),
('Grace', 'White', 'Vienna', 27),
('James', 'Lee', 'Copenhagen', 32);
