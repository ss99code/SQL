-- --- exercise 1. print total number of books in db
-- select count(book_id)  from books 

-- --- exercise 2. how many books released in each year
-- select released_year, count(*) from books group by released_year order by released_year ASC

-- --- exercise 3. total number books in stock
-- select sum(stock_quantity) from books 

-- --- exercise 4. AVG realease_year for each author (first name,last name) !!!!!!
-- select avg(released_year) as AVG_RY ,concat(author_fname,' ', author_lname) as author from books group by author order by AVG_RY ASC

-- --- exercise 5. use subqueries to find FULL NAME THAT WROTE LONGEST BOOK
-- select author_fname, author_lname from books where pages = (select max(pages) from books)

-- --- exercise 6. year,#books,avg pages
-- SELECT 
--     released_year AS 'year',
--     COUNT(*) AS '# books',
--     AVG(pages) AS 'Average pages'
-- FROM
--     books
-- GROUP BY released_year
-- ORDER BY released_year ASC