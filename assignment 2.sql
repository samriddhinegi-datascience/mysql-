create database Library;
use Library;
create table books(
id int primary key Auto_increment,
title varchar(255),
author varchar(100),
year year,
genre varchar(100));
insert into books(id,title,author,year,genre)
value(1,"The Greate Gatsby","F.Scott Fitzgerald",1925,"Fiction"),
(2,"Pride and Prejudice","Jane Austen",1913,"Romance"),
(3,"To Kill a Mockingbird","Harper Lee",1960,"Fiction"),
(4,"1984","George Orwell",1949,"Dystopian"),
(5,"Moby Dick","Herman Melville",1951,"Adventure");

SELECT * FROM BOOKS WHERE TITLE LIKE "T%";
SELECT * FROM BOOKS WHERE AUTHOR LIKE "%SON";
SELECT * FROM BOOKS WHERE TITLE LIKE "%and%";
SELECT * FROM BOOKS WHERE TITLE LIKE "%bird";
SELECT * FROM BOOKS WHERE TITLE REGEXP "^.{3}$";
SELECT * FROM BOOKS WHERE TITLE REGEXP "[0-9]";
SELECT * FROM BOOKS WHERE AUTHOR REGEXP "^[A-J]";
SELECT * FROM BOOKS WHERE GENRE REGEXP "Fiction|Adventure";
SELECT * FROM BOOKS WHERE TITLE REGEXP "[A-Z]";
SELECT * FROM BOOKS WHERE YEAR BETWEEN 1800 AND 1950;
SELECT * FROM BOOKS WHERE AUTHOR REGEXP "^[A-Za-z]+ [A-Za-z]+$";
SELECT * FROM BOOKS WHERE TITLE REGEXP "^P[A-Za-z]+ [A-Za-z]+$";
SELECT * FROM BOOKS WHERE TITLE REGEXP "!|@|#";