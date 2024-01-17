use MOVIES_W3;
select * from actor;
select * from director;
select * from genres;
select * from movie;
select * from movie_cast;
select * from movie_genres;
select * from rating;
select * from reviewer;

							/********************exercise 1***********************/

/** 1.Write a SQL query to find the name and year of the movies. Return movie title, movie release year.**/
select mov_title,mov_year from movie;

//**2. write a SQL query to find when the movie ‘American Beauty’ released. Return movie release year.*//
select mov_title,mov_year from movie where mov_title='American Beauty';

//**3. write a SQL query to find the movie, which was made in the year 1999. Return movie title.**/
select mov_title from movie where mov_year='1999'

//**4. write a SQL query to find those movies, which was made before 1998. Return movie title.**/
select mov_title from movie where mov_year<'1998'


//**5.write a SQL query to find the name of all reviewers and movies together in a single list**/
select rev_name from reviewer
Union
select mov_title from movie

/*6.write a SQL query to find all reviewers who have rated 7 or more stars to their rating. Return reviewer name.*/
select rev_name from reviewer left join rating on reviewer.rev_id=rating.rev_id where rev_stars>=7


/*7.write a SQL query to find the movies without any rating. Return movie title.*/
select mov_title from movie m left join rating r on m.mov_id=r.mov_id where num_o_ratings is Null;

/*8.write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.*/
select mov_title,mov_id from movie where mov_id in (905,907,917);

/*9.write a SQL query to find those movie titles, which include the words 'Boogie Nights'. Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year.*/
select mov_id,mov_title,mov_year from movie where mov_title like '%Boogie%Nights%' order by mov_year;


/*10. write a SQL query to find those actors whose first name is 'Woody' and the last name is 'Allen'. Return actor ID*/
select act_id from actor where act_fname='Woody' And act_lname='Allen';



	/********************exercise 2 (Sub-queries)***********************/
//*1.Find the actors who played a role in the movie 'Annie Hall'. Return all the fields of actor table.*/
select * from actor where act_id in (select act_id from movie_cast where mov_id in (select mov_id from movie where mov_title='Annie Hall'));

//*2.write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. Return director first name, last name.*/
select dir_fname, dir_lname from director where dir_id in (select dir_id from movie_direction where mov_id in (select mov_id from movie_cast where role='Miss Giddens'));
select dir_fname, dir_lname from director where dir_id in (select dir_id from movie_direction where mov_id in (select mov_id from movie_cast where role='Eyes Wide Shut'));


//*3.write a SQL query to find those movies, which released in the country besides UK. Return movie title, movie year, movie time, date of release, releasing country.*/
select mov_title ,mov_year,mov_time, mov_dt_rel,mov_rel_country from movie where mov_rel_country<>'UK';  


//*4.write a SQL query to find those movies where reviewer is unknown. Return movie title, year, release date, director first name, last name, actor first name, last name..*/
SELECT a.mov_title, a.mov_year, a.mov_dt_rel, 
       c.dir_fname, c.dir_lname, f.act_fname, f.act_lname
FROM movie a
JOIN movie_direction b ON a.mov_id = b.mov_id
JOIN director c ON b.dir_id = c.dir_id
JOIN rating d ON a.mov_id = d.mov_id
JOIN reviewer e ON d.rev_id = e.rev_id
JOIN movie_cast g ON a.mov_id = g.mov_id
JOIN actor f ON g.act_id = f.act_id
WHERE e.rev_name IS NULL;



//*5.write a SQL query to find those movies directed by the director whose first name is ‘Woddy’ and last name is ‘Allen’. Return movie title. */
select mov_title from movie where mov_id in (select mov_id from movie_direction where dir_id in  (select dir_id from director where dir_fname='Woody' and dir_lname='Allen'));


 //**6.write a SQL query to find those years, which produced at least one movie and that, received a rating of more than three stars. Sort the result-set in ascending order by movie year. Return movie year.**/
SELECT DISTINCT m.mov_year 
FROM movie m
JOIN rating r ON m.mov_id = r.mov_id
WHERE r.rev_stars > 3
ORDER BY m.mov_year;

 //*7.write a SQL query to find those movies, which have no ratings. Return movie title.*/
select mov_title from movie where mov_id in ( select mov_id from rating where num_o_ratings is null);

//**8.write a SQL query to find those reviewers who have rated nothing for some movies. Return reviewer name.**/
select rev_name from reviewer where rev_id in (select rev_id from rating where rev_stars is null)

//**9.write a SQL query to find those movies, which reviewed by a reviewer and got a rating. Sort the result-set in ascending order by reviewer name, movie title, review Stars. Return reviewer name, movie title, review Stars.**/
select rev_name from reviewer where rev_id in (select rev_id from  rating  where rev_stars is not null)


//*11. write a SQL query to find those movies, which have receive highest number of stars. Group the result set on movie title and sorts the result-set in ascending order by movie title. Return movie title and maximum number of review stars. **/
select m.mov_title,max(r.rev_stars) from Movie m  join rating r on (m.mov_id=r.mov_id) group by m.mov_title


//**12. write a SQL query to find all reviewers who rated the movie 'American Beauty'. Return reviewer name.**//
select rev_name from reviewer where rev_id in (select rev_id from rating  where mov_id in (select  mov_id from movie where mov_title ='American Beauty'));


//**13. write a SQL query to find the movies, which have reviewed by any reviewer body except by 'Paul Monks'. Return movie title. **/
select mov_title from movie where mov_id in(select mov_id from rating where rev_id in (select rev_id from reviewer where rev_name<>'Paul Monks') )

//**14 write a SQL query to find the lowest rated movies. Return reviewer name, movie title, and number of stars for those movies. **/
SELECT r.rev_name, m.mov_title, ra.rev_stars FROM reviewer r
JOIN rating ra ON r.rev_id = ra.rev_id
JOIN movie m ON m.mov_id = ra.mov_id
WHERE ra.rev_stars = (SELECT MIN(rev_stars) FROM rating);



//** 15.write a SQL query to find the movies directed by 'James Cameron'. Return movie title. **/
select mov_title from movie where mov_id in ( select mov_id from movie_direction where dir_id in (select dir_id from director where dir_fname='James' and dir_lname='Cameron'))


//*16.Write a query in SQL to find the name of those movies where one or more actors acted in two or more movies.**//
SELECT m.mov_title FROM movie m
JOIN movie_cast mc ON m.mov_id = mc.mov_id
JOIN actor a ON a.act_id = mc.act_id
WHERE a.act_id IN (
    SELECT act_id
    FROM movie_cast
    GROUP BY act_id
    HAVING COUNT(act_id) > 1
);



			/********************exercise 3 (Joins)***********************/
//**1.write a SQL query to find the name of all reviewers who have rated their ratings with a NULL value. Return reviewer name.**//
select rev_name from rating  join reviewer on rating.rev_id=reviewer.rev_id where rev_stars is null;

//**2.write a SQL query to find the actors who were cast in the movie 'Annie Hall'. Return actor first name, last name and role. **//
select a.act_fname,a.act_lname,mc.role from actor a join movie_cast mc on a.act_id=mc.act_id 
join movie m on mc.mov_id=m.mov_id where m.mov_title='Annie Hall';



//**3. write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. Return director first name, last name and movie title.**//
select d.dir_fname,d.dir_lname,m.mov_title from director d join movie_direction md on  d.dir_id= md.dir_id 
join movie m on md.mov_id=m.mov_id where mov_title='Eyes Wide Shut';

//**4.write a SQL query to find who directed a movie that casted a role as ‘Sean Maguire’. Return director first name, last name and movie title.**//
select d.dir_fname,d.dir_lname,m.mov_title from director d join movie_direction md on  d.dir_id= md.dir_id 
join movie m on md.mov_id=m.mov_id
join movie_cast mc on md.mov_id=mc.mov_id where role='Sean Maguire';

//*5.write a SQL query to find the actors who have not acted in any movie between1990 and 2000 (Begin and end values are included.). Return actor first name, last name, movie title and release year*//
select * from actor a join movie_cast mc on a.act_id=mc.act_id
join  movie m on mc.mov_id=m.mov_id where mov_year not between 1990 and 2000;

//**6.write a SQL query to find the directors with number of genres movies. Group the result set on director first name, last name and generic title. Sort the result-set in ascending order by director first name and last name. Return director first name, last name and number of genres movies.**//
select gen_id from movie_genres
select mov_id from movie_direction
select gen_id,d.dir_fname ,count(gen_id) from director d join  movie_direction md on d.dir_id=md.dir_id 
join movie_genres mg on md.mov_id=mg.mov_id group by dir_fname;

//**7.write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title.**//
select mov_title,mov_year,gen_title from movie m join movie_genres mg on m.mov_id=mg.mov_id
join genres g  on mg.gen_id=g.gen_id;


//**8.write a SQL query to find all the movies with year, genres, and name of the director.**//
select mov_title,gen_title,d.dir_fname,d.dir_lname from  movie m join movie_direction md on m.mov_id=md.mov_id
join director d on md.dir_id=d.dir_id
join movie_genres mg on m.mov_id=mg.mov_id
join genres g on mg.gen_id=g.gen_id;

//**9.write a SQL query to find the movies released before 1st January 1989. Sort the result-set in descending order by date of release. Return movie title, release year, date of release, duration, and first and last name of the director.**//
select mov_title,mov_dt_rel,mov_time AS duration,d.dir_fname,d.dir_lname from director d join movie_direction md on d.dir_id=md.dir_id
join movie m on md.mov_id=m.mov_id where mov_dt_rel<'1989-01-01' order by mov_dt_rel desc;

//**10.write a SQL query to compute the average time and count number of movies for each genre. Return genre title, average time and number of movies for each genre.**//
select gen_title,count(m.mov_id) as no_of_mov,avg(mov_time) as 'average time' from movie m join movie_genres mg on m.mov_id=mg.mov_id
join genres g on mg.gen_id=g.gen_id group by gen_title


//**11. write a SQL query to find movies with the lowest duration. Return movie title, movie year, director first name, last name, actor first name, last name and role.**//
select mov_title,mov_year,dir_fname,dir_lname ,act_fname,act_lname,role from director d join movie_direction md on d.dir_id=md.dir_id
join movie m on md.mov_id=m.mov_id
join movie_cast mc on m.mov_id=mc.mov_id
join actor a on mc.act_id=a.act_id
where mov_time=(select min(mov_time) from movie) ;


//**12.write a SQL query to find those years when a movie received a rating of 3 or 4. Sort the result in increasing order on movie year. Return move year. **//
select mov_year from movie m join rating r on m.mov_id=r.mov_id where rev_stars=3 or rev_stars=4 order by mov_year ;



//**13.write a SQL query to get the reviewer name, movie title, and stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars.**/
select * from rating;
select rev_name,mov_title,rev_stars from reviewer r left join rating  on r.rev_id=rating.rev_id 
join movie m on m.mov_id=rating.mov_id  order by rev_name,mov_title,rev_stars 


//**14.write a SQL query to find those movies that have at least one rating and received highest number of stars. Sort the result-set on movie title. Return movie title and maximum review stars.**//
select mov_title, max(rev_stars) from rating r join movie m on r.mov_id=m.mov_id  where rev_stars>1 group by mov_title;

//**15.write a SQL query to find those movies, which have received ratings. Return movie title, director first name, director last name and review stars.**/
select mov_title,dir_fname,dir_lname,rev_stars from movie m join rating  r on m.mov_id=r.mov_id 
join movie_direction md  on m.mov_id=md.mov_id 
join director d on d.dir_id=md.dir_id where num_o_ratings is not null and rev_stars is not null;


//**16.Write a query in SQL to find the movie title, actor first and last name, and the role for those movies where one or more actors acted in two or more movies.**// SELECT mov_title, act_fname, act_lname, role
select mov_title, act_fname, act_lname, role from movie jOIN movie_cast on movie_cast.mov_id=movie.mov_id 
JOIN actor on movie_cast.act_id=actor.act_id
where actor.act_id IN (select act_id from movie_cast group by  act_id having COUNT(*)>=2);










