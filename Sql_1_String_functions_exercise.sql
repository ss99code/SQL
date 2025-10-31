CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

---EXERCISE 1. REVERSE, UPPERCASE 'WHY DOSE MY CAT LOOK AT ME WITH SUCH HATREDS?'
SELECT REVERSE(UCASE('Why DOse MY CAT LooK AT ME WITH SUCH HATRED?'))

---EXERCISE 2. 
I-like-cats

---EXERCISE 3. replace ' ' by -> ， title
select replace (title, ' ', '->') as title from books

---EXERCISE 4. forwards ln, backwards ln
SELECT 
    author_lname AS 'forwards',
    REVERSE(author_lname) AS 'backwards'
FROM
    books

---EXERCISE 5. Fullname in caps
SELECT 
    UCASE(CONCAT(author_fname,' ', author_lname)) AS 'full name in caps'
FROM
    books

---EXERCISE 6. title + release date -> blurb
select concat(title, 'was released in', released_year) as blurb from books


---EXERCISE 7. print book titles and the length of each line
select title, length(title) as 'chara count' from books

---EXERCISE 8. short title 10， author name+, quantity instock 也可以用substr
SELECT 
    CONCAT((LEFT(title, 10)), '...') AS 'short title',
    concat(left(author_fname,6),',',left(author_lname,4))as 'author',
    concat(stock_quantity,' in stock') as 'quantity'
FROM
    books
 