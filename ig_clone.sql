--  ### users : id/ user_name/ created_at
-- create database instagram 
-- use instagram 
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);
--  ### photos : id/image_url/user_id/created_at  <user is should linked with users.id, Foreign key >

CREATE TABLE photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(200) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id)
        REFERENCES users(id)
);


-- ### Comments : id, comment_text,user_id(foreign key),photo_id (foreign key),created_at)
create table comments(
id int auto_increment primary key,
comment_text varchar(255) not null,
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id), 
foreign key (photo_id) references photos(id)
);

-- ### Likes: user_id, photo_id,created_at

create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id)
);

-- ## relationship  Follow
CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id)
        REFERENCES users (id),
    FOREIGN KEY (followee_id)
        REFERENCES users (id),
    PRIMARY KEY (follower_id , followee_id)
);
 
-- ## Tags

CREATE TABLE tags (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    FOREIGN KEY (tag_id)
        REFERENCES tags (id),
    PRIMARY KEY (photo_id , tag_id)
);

