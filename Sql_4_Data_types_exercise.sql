-- Exercise 1. whats a good use case for CHAR(),
-- When recording some values that with a similiar lenth 

-- Exercise 2. Fill In The Blanks
-- CREATE TABLE inventory (
-- item_name VARCHAR(50),
-- price float(),
-- quantity INT UNSIGNED
-- );

-- Exercise 3. What's the difference between DATETIME and TIMESTAMP?
-- timestamp can automatically generated when you updates, insert somethin.

-- Exercise 4. Print Out The Current Time
-- select current_time() 

-- Exercise 5. Print Out The Current Date
-- select current_date()

-- Exercise 6. Print Out The Current Day Of The Week NUMBER
-- select date_format( current_date(), '%w')

-- Exercise 7. Print Out The Current Day Of The Week DAYNAME
-- select date_format( current_date(), '%W')

-- Exercise 8.Print out the current day and time using this format: mm/dd/yyyy
-- select date_format(current_date(),'%c/%d/%Y')


-- Exercise 9. Print out the currentday and time usingthis format: 
-- January 2nd at 3:15 
-- April 1st at 10:18
-- select date_format(current_date(),'%b %D at %k:%i')

-- Exercise 10. Create a tweets table that stores:
-- The Tweet content
-- A Username
-- Time it was created

-- Use exercise 
-- create table tweet (
-- The_tweet_content varchar(150),
-- A_username varchar(15),
-- Time_it_was_created TIMESTAMP default CURRENT_TIMESTAMP 
-- ) 
-- show columns from tweet 
-- insert into tweet (The_tweet_content,A_username) values ('heyyy','ss') 
-- SELECT * FROM TWEET



