-- show databases
-- use book_shop

-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- --- exercise 1. find titles that contains stories
-- select title from books where title like '%stories%'

-- --- exercise 2. find the longest book,title +page count
-- SELECT 
--     title, pages
-- FROM
--     books
-- ORDER BY pages DESC limit 1

-- --- exercise 3.  Print summary ->title year, for 3 most recent books
-- select concat(title,' - ' ,released_year ) from books as summary order by released_year desc limit 3

-- ---exercise 4.  Find all books with authorname that contains ' '
-- select title, author_lname from books where author_lname like '% %'

-- ---exercise 5.  Find 3 books with lowest quantity 
-- SELECT 
--     title, released_year, stock_quantity
-- FROM
--     books
-- ORDER BY stock_quantity ASC
-- LIMIT 3


-- ---exercise 6.  Print title,name sort first by author_name and then by title
-- SELECT 
--     title, author_lname
-- FROM
--     books
-- ORDER BY author_lname ASC , title ASC


-- ---exercise 7.  YELL -> sorted alphabetically by last name;
-- SELECT 
--     UCASE(CONCAT('MY FAVORITE AUTHOR IS ',
--                     author_fname,
--                     author_lname,
--                     '!'))
-- AS YELL FROM books 
-- ORDER BY author_lname ASC



