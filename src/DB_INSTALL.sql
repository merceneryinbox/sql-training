-- Дамп данных таблицы films.actor: ~24 rows (приблизительно)
/*!40000 ALTER TABLE actor DISABLE KEYS */;
create table if not exists actor (id identity primary key,fname varchar(32),lname varchar(32),gender varchar (32))
;
INSERT INTO actor (id, fname, lname, gender) VALUES
(101, 'James', 'Stewart', 'M'),
  (102, 'Deborah', 'Kerr', 'F'),
  (103, 'Peter', 'OToole', 'M'),
  (104, 'Robert', 'De Niro', 'M'),
  (105, 'F. Murray', 'Abraham', 'M'),
  (106, 'Harrison', 'Ford', 'M'),
  (107, 'Nicole', 'Kidman', 'F'),
  (108, 'Stephen', 'Baldwin', 'M'),
  (109, 'Jack', 'Nicholson', 'M'),
  (110, 'Mark', 'Wahlberg', 'M'),
  (111, 'Woody', 'Allen', 'M'),
  (112, 'Claire', 'Danes', 'F'),
  (113, 'Tim', 'Robbins', 'M'),
  (114, 'Kevin', 'Spacey', 'M'),
  (115, 'Kate', 'Winslet', 'F'),
  (116, 'Robin', 'Williams', 'M'),
  (117, 'Jon', 'Voight', 'M'),
  (118, 'Ewan', 'McGregor', 'M'),
  (119, 'Christian', 'Bale', 'M'),
  (120, 'Maggie', 'Gyllenhaal', 'F'),
  (121, 'Dev', 'Patel', 'M'),
  (122, 'Sigourney', 'Weaver', 'F'),
  (123, 'David', 'Aston', 'M'),
  (124, 'Ali', 'Astin', 'F');
/*!40000 ALTER TABLE actor ENABLE KEYS */;

-- Дамп данных таблицы films.director: ~23 rows (приблизительно)
/*!40000 ALTER TABLE director DISABLE KEYS */;
create table director (id identity primary key,fname varchar(32),lname varchar(32))
;

INSERT INTO director (id, fname, lname) VALUES
(201, 'Alfred', 'Hitchcock'),
  (202, 'Jack', 'Clayton'),
  (203, 'David', 'Lean'),
  (204, 'Michael', 'Cimino'),
  (205, 'Milos', 'Forman'),
  (206, 'Ridley', 'Scott'),
  (207, 'Stanley', 'Kubrick'),
  (208, 'Bryan', 'Singer'),
  (209, 'Roman', 'Polanski'),
  (210, 'Paul', 'Thomas Anderson'),
  (211, 'Woody', 'Allen'),
  (212, 'Hayao', 'Miyazaki'),
  (213, 'Frank', 'Darabont'),
  (214, 'Sam', 'Mendes'),
  (215, 'James', 'Cameron'),
  (216, 'Gus', 'Van Sant'),
  (217, 'John', 'Boorman'),
  (218, 'Danny', 'Boyle'),
  (219, 'Christopher', 'Nolan'),
  (220, 'Richard', 'Kelly'),
  (221, 'Kevin', 'Spacey'),
  (222, 'Andrei', 'Tarkovsky'),
  (223, 'Peter', 'Jackson');
/*!40000 ALTER TABLE director ENABLE KEYS */;

-- Дамп данных таблицы films.genres: ~13 rows (приблизительно)
/*!40000 ALTER TABLE genres DISABLE KEYS */;
create table genres  (id identity primary key,title varchar(32))
;
INSERT INTO genres (id, title) VALUES
(1001, 'Action'),
  (1002, 'Adventure'),
  (1003, 'Animation'),
  (1004, 'Biography'),
  (1005, 'Comedy'),
  (1006, 'Crime'),
  (1007, 'Drama'),
  (1008, 'Horror'),
  (1009, 'Music'),
  (1010, 'Mystery'),
  (1011, 'Romance'),
  (1012, 'Thriller'),
  (1013, 'War');
/*!40000 ALTER TABLE genres ENABLE KEYS */;

-- Дамп данных таблицы films.movie: ~28 rows (приблизительно)
/*!40000 ALTER TABLE movie DISABLE KEYS */;
-- drop table movie cascade ;
create table movie (id identity primary key,title varchar(32),
year int, time int, lang varchar(32), dt_rel varchar(32) ,
rel_country varchar(32))
;
INSERT INTO movie (id, title, year, time, lang, dt_rel, rel_country) VALUES
(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'),
  (902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'),
  (903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'),
  (904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'),
  (905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'),
  (906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'),
  (907, 'Eyes Wide Shut', 1999, 159, 'English', NULL, 'UK'),
  (908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'),
  (909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'),
  (910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'),
  (911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'),
  (912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'),
  (913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'),
  (914, 'American Beauty', 1999, 122, 'English', NULL, 'UK'),
  (915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'),
  (916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'),
  (917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'),
  (918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'),
  (919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'),
  (920, 'Donnie Darko', 2001, 113, 'English', NULL, 'UK'),
  (921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'),
  (922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'),
  (923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'),
  (924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'),
  (925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'),
  (926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP'),
  (927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'),
  (928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');
/*!40000 ALTER TABLE movie ENABLE KEYS */;

-- Дамп данных таблицы films.movie_cast: ~23 rows (приблизительно)
/*!40000 ALTER TABLE movie_cast DISABLE KEYS */;

create table movie_cast (act_id int,mov_id int, role varchar(32),
FOREIGN KEY (act_id) REFERENCES ACTOR (id),
FOREIGN KEY (mov_id) REFERENCES MOVIE (id)
)
;

INSERT INTO movie_cast (act_id, mov_id, role) VALUES
(101, 901, 'John Scottie Ferguson'),
  (102, 902, 'Miss Giddens'),
  (103, 903, 'T.E. Lawrence'),
  (104, 904, 'Michael'),
  (105, 905, 'Antonio Salieri'),
  (106, 906, 'Rick Deckard'),
  (107, 907, 'Alice Harford'),
  (108, 908, 'McManus'),
  (109, 909, 'J.J. Gittes'),
  (110, 910, 'Eddie Adams'),
  (111, 911, 'Alvy Singer'),
  (112, 912, 'San'),
  (113, 913, 'Andy Dufresne'),
  (114, 914, 'Lester Burnham'),
  (114, 923, 'Bobby Darin'),
  (115, 915, 'Rose DeWitt Bukater'),
  (116, 916, 'Sean Maguire'),
  (117, 917, 'Ed'),
  (118, 918, 'Renton'),
  (119, 919, 'Alfred Borden'),
  (120, 920, 'Elizabeth Darko'),
  (121, 921, 'Older Jamal'),
  (122, 922, 'Ripley');
/*!40000 ALTER TABLE movie_cast ENABLE KEYS */;

-- Дамп данных таблицы films.movie_direction: ~23 rows (приблизительно)
/*!40000 ALTER TABLE movie_direction DISABLE KEYS */;

create table movie_direction (dir_id int,mov_id int,
  FOREIGN KEY (dir_id) REFERENCES DIRECTOR (id),
  FOREIGN KEY (mov_id) REFERENCES MOVIE (id))
;
INSERT INTO movie_direction (dir_id, mov_id) VALUES
(201, 901),
  (202, 902),
  (203, 903),
  (204, 904),
  (205, 905),
  (206, 906),
  (207, 907),
  (208, 908),
  (209, 909),
  (210, 910),
  (211, 911),
  (212, 912),
  (213, 913),
  (214, 914),
  (215, 915),
  (216, 916),
  (217, 917),
  (218, 918),
  (219, 919),
  (220, 920),
  (218, 921),
  (215, 922),
  (221, 923);
/*!40000 ALTER TABLE movie_direction ENABLE KEYS */;

-- Дамп данных таблицы films.movie_genres: ~19 rows (приблизительно)
/*!40000 ALTER TABLE movie_genres DISABLE KEYS */;
-- drop table MOVIE_GENRES;
create table movie_genres (mov_id int,gen_id int,
  FOREIGN KEY (mov_id) REFERENCES MOVIE (id),
  FOREIGN KEY (gen_id) REFERENCES GENRES (id))
;
INSERT INTO movie_genres (mov_id, gen_id) VALUES
(922, 1001),
  (903, 1002),
  (917, 1002),
  (912, 1003),
  (911, 1005),
  (908, 1006),
  (913, 1006),
  (918, 1007),
  (921, 1007),
  (926, 1007),
  (928, 1007),
  (902, 1008),
  (923, 1009),
  (901, 1010),
  (907, 1010),
  (927, 1010),
  (914, 1011),
  (906, 1012),
  (904, 1013);

-- Дамп данных таблицы films.reviewer: ~20 rows (приблизительно)
/*!40000 ALTER TABLE reviewer DISABLE KEYS */;

create table reviewer (id identity, name varchar(32))
  ;
INSERT INTO reviewer (id, name) VALUES
(9001, 'Righty Sock'),
  (9002, 'Jack Malvern'),
  (9003, 'Flagrant Baronessa'),
  (9004, 'Alec Shaw'),
  (9005, NULL),
  (9006, 'Victor Woeltjen'),
  (9007, 'Simon Wright'),
  (9008, 'Neal Wruck'),
  (9009, 'Paul Monks'),
  (9010, 'Mike Salvati'),
  (9011, NULL),
  (9012, 'Wesley S. Walker'),
  (9013, 'Sasha Goldshtein'),
  (9014, 'Josh Cates'),
  (9015, 'Krug Stillo'),
  (9016, 'Scott LeBrun'),
  (9017, 'Hannah Steele'),
  (9018, 'Vincent Cadena'),
  (9019, 'Brandt Sponseller'),
  (9020, 'Richard Adams');


-- Дамп данных таблицы films.rating: ~19 rows (приблизительно)
/*!40000 ALTER TABLE rating DISABLE KEYS */;
/*!40000 ALTER TABLE movie_genres ENABLE KEYS */;
/*!40000 ALTER TABLE rating ENABLE KEYS */;

create table rating (mov_id int,rev_id int,
                     rev_stars float, num_o_ratings integer,
  FOREIGN KEY (mov_id) REFERENCES MOVIE (id),
  FOREIGN KEY (rev_id) REFERENCES REVIEWER (id))
;
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES
(901, 9001, 8.40, 263575),
  (902, 9002, 7.90, 20207),
  (903, 9003, 8.30, 202778),
  (906, 9005, 8.20, 484746),
  (908, 9007, 8.60, 779489),
  (909, 9008, NULL, 227235),
  (910, 9009, 3.00, 195961),
  (911, 9010, 8.10, 203875),
  (912, 9011, 8.40, NULL),
  (914, 9013, 7.00, 862618),
  (915, 9001, 7.70, 830095),
  (916, 9014, 4.00, 642132),
  (918, 9016, NULL, 580301),
  (920, 9017, 8.10, 609451),
  (921, 9018, 8.00, 667758),
  (922, 9019, 8.40, 511613),
  (923, 9020, 6.70, 13091),
  (924, 9006, 7.30, NULL),
  (925, 9015, 7.70, 81328);

select * from actor;

https://drive.google.com/open?id=0B-tAudXMRXsxUlRvdDh4Y3ZlVGs
https://epam-my.sharepoint.com/:f:/p/radmir_kashaev/EkpslfGz_nBCp1S57BiNos0Bnce3921E5s5wnMYnh4l56w?e=A7cwwF


-- select non english films
SELECT * from movie WHERE lang != 'English';

-- calculated column
SELECT concat(title, ' is released in ', lang) as MyFancyTitle FROM movie;

-- select movies that contain "eye" in their title (case insensitive)
SELECT * from movie WHERE title ILIKE '%eye%';

-- fetch first 10 rows only
SELECT * from movie LIMIT 10;

-- get first 10 movies released 2001
SELECT * from movie WHERE extract(YEAR from dt_rel)=2001 LIMIT 10;

-- get movies with year between 1997 and 1999
SELECT * from movie WHERE year BETWEEN 1997 ad 1999;
SELECT * from movie WHERE year in (1997, 1998, 1999);

-- order films by title
SELECT * from movie ORDER BY title;

-- last 10 entries
SELECT * from movie ORDER BY id desc LIMIT 10;

-- show films titles sorted by age
SELECT title, extract(YEAR from current_date) - extract(YEAR from dt_rel) as age
from movie
where
order by age;

-- show films starting with A
SELECT * from movie where title like 'A%';

-- films and duration in hours
SELECT title, time/60 as hours from movie;

-- films and duration (boring, medium, short)
SELECT
title,
CASE
WHEN time < 60 THEN 'short'
WHEN time < 120 THEN 'medium'
ELSE 'boring'
END AS Duration
FROM movie;

-- sort films by last 3 chars of title
select * from movie ORDER BY right(lower(title), 3) desc;

select title, coalesce(dt_rel + '', 'empty')
from MOVIE;

-- uppercase in action
select upper(title) from movie;

select *
from MOVIE
order by lower(right(title, 3))
;



-- show all languages (without duplication)
SELECT DISTINCT lang from movie;
-- the same with years
SELECT DISTINCT year from movie ORDER BY year;

-- count of different languages
SELECT count(DISTINCT lang) FROM movie;

-- film stats, aggregation functions in action
SELECT sum(time), avg(time), min(time), max(time) from movie;

-- shows language and it's count
select lang, count(lang) from movie
group by 1
;

select lang, count(lang), avg(time)
from movie
where rel_country != 'SW'
group by 1
;


select coalesce(extract(month from dt_rel), 1) as Month, avg(time), count(*)
from MOVIE
GROUP BY Month
ORDER BY 1
;


SELECT title, year, time/60 as Duration from movie
ORDER BY 2, 3, 1;


select rel_country, lang, count(*)
from movie
GROUP BY 1, 2
ORDER BY 1, 2
;

-- just like the Elvis operator username ?: login ?: email;
SELECT COALESCE(username, login, email)
FROM user;

-- show fimls released in each month with month name for those where count > 2
select coalesce(extract(MONTH from dt_rel), 1) as month, count(dt_rel) as cnt
from movie
GROUP BY 1
HAVING count(dt_rel) > 2
ORDER BY 1
;

-- take the first letter of the film title and count films starting with the same letter
select left(title, 1) as capital, count(*)
from movie
GROUP BY 1
ORDER BY 1;


select coalesce(extract(month from dt_rel), 1) as Month, avg(time), count(*)
from MOVIE
GROUP BY Month
ORDER BY 1
;

select left(title, 1) as letter, GROUP_CONCAT(TITLE SEPARATOR ', ')
from MOVIE
GROUP BY letter
ORDER BY 1
;

select * from (
select (year/10 + '0s') as decade, count(*) as cnt
from MOVIE
GROUP BY decade
)
where cnt > 2;


select distinct left(title, 1) as letter,
(select count(*) from MOVIE as mb where left(mb.title, 1) = left(ma.title, 1) )
from MOVIE as ma
ORDER BY 1
;

select * from movie
where rel_country in (select DISTINCT REL_COUNTRY from MOVIE where lang = 'Japanese');

-- list of movies released after Amadeus
select * from MOVIE
where year > (select year from MOVIE where TITLE='Amadeus')
and year < (select year from MOVIE where TITLE='Beyond the Sea')
order by year;

-- list of movies released after Amadeus
select * from MOVIE
where year between 1994 and 2004
order by year;

select fname from ACTOR
UNION ALL
select fname from DIRECTOR
;

select fname from ACTOR
INTERSECT
select fname from DIRECTOR
;

select fname from ACTOR
EXCEPT
select fname from DIRECTOR
;

select *
from MOVIE as m, MOVIE_GENRES as mg
where m.id = mg.MOV_ID
;

select m.*, g.TITLE as genre
from movie as m
join MOVIE_GENRES as mg ON m.ID = mg.MOV_ID
join GENRES g on mg.GEN_ID = g.ID
;

select m.*, coalesce(g.TITLE, 'none') as genre
from movie as m
left join MOVIE_GENRES as mg ON m.ID = mg.MOV_ID
left join GENRES g on mg.GEN_ID = g.ID
;

select g.TITLE, count(*), group_concat(m.title order by m.title SEPARATOR ', ')
from GENRES g
join MOVIE_GENRES mg on g.ID = mg.GEN_ID
join MOVIE m ON mg.MOV_ID = m.ID
GROUP BY g.title
;





create view gmovie as
select m.title, m.year, g.title as genGMOVIE re
from movie as m
join movie_genres as mg on m.id = mg.mov_id
join genres as g on g.id = mg.gen_id
;

select * from gmovie;

create table movie2 as
select * from movie where 1 = 2;

insert into movie2
select * from movie;

--
select title
from movie as m
where not exists (select 1 from movie_genres where mov_id=m.id);

--
select m.*, g.title
from movie as m
left join movie_genres as mg on (m.id = mg.mov_id)
right join genres as g on (mg.gen_id = g.id)
;