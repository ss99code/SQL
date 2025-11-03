-- 1. find the longest users top 5
select * from users order by created_at ASC limit 5;

-- 2. find the day of the week do most users register on
SELECT 
    DAYNAME(created_at) AS weekday_register,
    count(*) as total
FROM
    users
group by weekday_register
order by total;

-- 3.find the users never posted a photo
SELECT 
    *
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.image_url IS NULL;
    
-- 4.who get most like on single photo
SELECT 
    users.username, COUNT(*) AS count
FROM
    photos
        JOIN
    likes ON photos.id = likes.photo_id
        JOIN
    users ON users.id = photos.user_id
GROUP BY likes.photo_id
ORDER BY count DESC
LIMIT 1;

-- 5.How many times dose the average user posts;
-- 1 : total number photos / totoal number of users 
select (select count(*) from photos) / (select count(*)from users) as avg;


SELECT 
    AVG(total_photos) AS avg_photos_per_user
FROM (
    SELECT 
        users.username,
        COUNT(photos.id) AS total_photos
    FROM users
    LEFT JOIN photos ON users.id = photos.user_id
    GROUP BY users.username
) AS t;


-- 6. Whats are top 5 most commonly used hashtages
select tag_name, count(*)  from tags
join photo_tags on photo_tags.tag_id = tags.id
group by tag_name
order by count(*) desc
limit 5;

-- 7.Find users who have like every single photo on the site
select username from photos
join likes on photos.id = likes.photo_id
join users on users.id = likes.user_id
group by likes.user_id
having count(*) = ( select max(id) from photos)
order by count(*) desc
limit 5 ;

 