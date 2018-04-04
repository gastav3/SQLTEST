/*
-- Utgå ifån att datumet är 2018-04-04

-- Uppgift 1
CREATE OR REPLACE VIEW `all_movies_view` AS
SELECT * FROM movie;

SELECT * FROM  all_movies_view;

-- Uppgift 2
CREATE OR REPLACE VIEW `all_movies_with_genre_action_view` AS
SELECT * FROM movie WHERE movie.genre = "Action";

SELECT * FROM all_movies_with_genre_action;

-- Uppgift 3

CREATE OR REPLACE VIEW `all_movies_that_are_lended_out_view` AS
SELECT m.movieName, c.customerFirstName, c.customerLastName, e.employeeFirstName, e.employeeLastName FROM movie_rented_details md
LEFT JOIN customer c ON c.idCustomer = md.Customer_idCustomer
LEFT JOIN employee e ON e.idEmployee = md.employee_idEmployee
LEFT JOIN movie m ON m.idMovie = md.movie_idMovie
WHERE md.movieReturnedDate IS NULL;

SELECT * FROM all_movies_that_are_lended_out_view;


-- Uppgift 4
CREATE OR REPLACE VIEW `all_movies_that_should_have_been_returned_view` AS
SELECT m.movieName, c.customerFirstName, c.customerLastName FROM movie_rented_details md
LEFT JOIN customer c ON c.idCustomer = md.Customer_idCustomer
LEFT JOIN movie m ON m.idMovie = md.movie_idMovie
WHERE md.movieReturnedDate IS NULL;

SELECT * FROM all_movies_that_should_have_been_returned_view;


-- Uppgift 5
CREATE OR REPLACE VIEW `count_and_list_movies_rented_out_by_employee_view` AS
SELECT e.employeeFirstName AS First_Name, e.employeeLastName AS Last_Name, COUNT(*) AS Movies_Lended FROM employee e
lEFT JOIN movie_rented_details md ON e.idEmployee = md.employee_idEmployee
WHERE e.idEmployee = md.employee_idEmployee
GROUP BY e.employeeFirstName ORDER BY Movies_Lended DESC;

SELECT * FROM count_and_list_movies_rented_out_by_employee_view;
*/
--
-- 
/*

DELETE FROM movie;
DELETE FROM actor;
DELETE FROM director;
DELETE FROM customer;
DELETE FROM employee;
DELETE FROM movie_rented_details;

ALTER TABLE movie AUTO_INCREMENT = 1;
ALTER TABLE actor AUTO_INCREMENT = 1;
ALTER TABLE director AUTO_INCREMENT = 1;
ALTER TABLE customer AUTO_INCREMENT = 1;
ALTER TABLE employee AUTO_INCREMENT = 1;
ALTER TABLE movie_rented_details AUTO_INCREMENT = 1;

INSERT INTO movie (movie.movieType, movie.movieName, movie.releaseYear, movie.genre) VALUES
(1, 'Toy Story 1', '2005-01-04', 'Action'),
(1, 'Toy Story 1', '2005-01-04', 'Action'),
(1, 'Toy Story 1', '2005-01-04', 'Action'),
(1, 'Toy Story 1', '2005-01-04', 'Action'),
(1, 'Toy Story 1', '2005-01-04', 'Action'),
(2, 'Shrek 3', '2007-02-21', 'Family'),
(3, 'Inception', '2010-12-01', 'Action'),
(3, 'Inception', '2010-12-01', 'Action'),
(3, 'Inception', '2010-12-01', 'Action'),
(4, 'Star Wars', '2015-09-01', 'Sci-fi'),
(5, 'Lord of The Rings', '2003-02-27', 'Fantasy'),
(6, 'Spooky Movie 1', '2018-03-29', 'Horror'),
(7, 'Lord of The Rings 2', '2018-02-21', 'Drama'),
(8, 'Pirates of Piratebay', '2018-01-17', 'Drama'),
(8, 'Pirates of Piratebay', '2018-01-17', 'Drama'),
(9, 'Taken 5', '2018-11-24', 'Action'),
(10, 'Shrek 1', '2001-05-10', 'Thriller');




INSERT INTO actor (actor.firstName, actor.lastName) VALUES
('Sven', 'Svensson'),
('Lars', 'Larsson'),
('Anders', 'Andersson'),
('Ingvar', 'Ingvarsson'),
('Bob', 'Bobsson'),
('Stina', 'Stinasson'),
('Per', 'Persson'),
('Olle', 'Ollesson'),
('Gustaf', 'Gustafsson');

INSERT INTO director (director.firstName, director.lastName) VALUES
('Vera', 'Ahlgren'),
('Elliot', 'Björnberg'),
('Adam', 'Ahlmark'),
('Noah', 'Almkvist'),
('Melina', 'Davidsson');

INSERT INTO customer (customer.firstName, customer.lastName) VALUES
('August', 'Gernandt'),
('Lovisa', 'From'),
('sak', 'Ahrenberg'),
('Amelia', 'Brinkmann'),
('William', 'Bergling');


INSERT INTO employee (employee.firstName, employee.lastName) VALUES
('Adam', 'Löfberg'),
('Elsa', 'Marklund'),
('Meja', 'Almén'),
('Alvin', 'Nordlander'),
('Clara', 'Nordenberg');


INSERT INTO movie_rented_details (movie_rented_details.rentedOutDate, movie_rented_details.movieReturnedDate, movie_rented_details.expectedReturnDate, movie_rented_details.customer_idCustomer, movie_rented_details.employee_idEmployee, movie_rented_details.movie_idMovie) VALUES
('2018-04-04', '2018-04-06', '2018-04-06', 1, 2, 1),
('2018-03-02', NULL, 		 '2018-03-06', 1, 2, 4),
('2018-04-01', '2018-04-05', '2018-04-05', 2, 2, 2),
('2018-04-02', '2018-04-04', '2018-04-06', 2, 2, 7),
('2018-04-03', NULL, 		 '2018-04-07', 4, 3, 5),
('2018-04-02', '2018-04-04', '2018-04-06', 3, 3, 10),
('2015-04-01', NULL, 		 '2015-04-05', 1, 3, 2),
('2018-04-02', '2018-04-06', '2018-04-06', 5, 1, 2),
('2018-03-31', '2018-04-03', '2018-04-03', 2, 1, 1),
('2018-04-06', '2018-04-06', '2018-04-10', 4, 1, 9);
*/