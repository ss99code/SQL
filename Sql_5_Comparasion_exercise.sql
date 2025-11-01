-- use book_shop
-- show columns from books

-- 1. Evaluate the following...
-- SELECT 10 != 10;    0
-- SELECT 15 > 14 AND 99 - 5 <= 94;		1 and 0 , 0 
-- SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;  1 

-- 2.Select All Books Written Before 1980 (non inclusive)  ???
-- select * from books where released_year < 1980 

-- 3. Select AllBooks Written By Eggers Or Chabon
-- select * from books where author_lname = 'Eggers' or author_lname = 'Chabon'

-- 4.Select All Books Written By Lahiri, Published after 2000
-- select * from books where author_lname = 'Lahiri' and released_year > 2000

-- 5. Select All books with page counts between 100 and 200
-- select * from books where pages between 100 and 200 

-- 6. Select all books where author_lname starts with a 'C' or an 'S''
-- SELECT author_lname from books WHERE substr(author_lname,1,1) in ('c','s')
--     
-- SELECT title, author_lname from books where substr(author_lname,1,1) in ('c','s')  
    
-- 7.If title contains 'stories' -> Short Stories 
-- Just Kids and A Heartbreaking Work -> Memoir
-- Everything Else -> Novel
-- select title,author_lname, 
-- case 
-- 	when title like '%stories%'then 'Short Stories'
-- 	when title = 'Just Kids' or title =  'A Heartbreaking Work' then 'Memoir'
-- 	else 'Novel'
-- end as TYPE
-- from books 

-- 8.MAKE this happen 
-- select author_fname, author_lname ,
-- 	CASE
-- 		when count(*)=1 then '1 book'
--         else concat(count(*),' books')

-- 	end as COUNT
--  from books group by author_fname, author_lname


