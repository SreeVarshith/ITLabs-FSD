--Creating the DataBase as Given
create table movies(movie_id int primary key,title varchar,release_year int,director_id int);
create table  directors (director_id INT PRIMARY KEY,director_name VARCHAr);
create table genres(genre_id int primary key,genre_name varchar);
create table movie_genres(movie_id int,genre_id int,foreign key(movie_id) references movies(movie_id),foreign key(genre_id) references genres(genre_id));
--Inserting the Values to the DataBase
insert into directors values(1,"Sukumar"),(2,"SS Rajamouoli"),(3,"Lokesh Kanagaraj"),(4,"Trvikram Srinivas");
insert into movies values(10,"Pushpa-The Rise",2021,1),(20,"RRR",2022,2),(30,"LEO-Bloody Sweet",2023,3),(40,"Ala Vaikuntapuramlo",2020,4);
insert into genres values(1,"action-thriller"),(2,"comedy"),(3,"action"),(4,"Family Entertainer");
insert into movie_genres values(10,1),(20,2),(30,3),(40,4);
-- SQL Query 1
select m.title,d.director_name from movies m,directors d where m.director_id=d.director_id;
-- SQL Query 2
select m.title,m.release_year,d.director_name from movies m left join directors d on m.director_id=d.director_id and d.director_name!="";
-- SQL Query 3
select d.director_name,m.title from directors d left join movies m on d.director_id=m.director_id and m.title!="";
-- SQL Query 4
select m.title,m.release_year,d.director_name from movies m join directors d on m.director_id=d.director_id and d.director_name!="";
-- SQL Query 5
select m.title,g.genre_name from movies m join movie_genres mg on m.movie_id=mg.movie_id join genres g on mg.genre_id=g.genre_id;


