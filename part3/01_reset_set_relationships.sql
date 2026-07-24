
--reset the reslationships between the tables and the database 
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags; 
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
    
    name TEXT NOT NULL
); 

CREATE TABLE posts(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_id UUID NOT NULL REFERENCES users(id),

    title TEXT NOT NULL,

    status TEXT NOT NULL DEFAULT 'draft'
        CHECK (status IN ('draft', 'published')),

    views INTEGER NOT NULL DEFAULT 0
        CHECK (views >= 0)
);

CREATE TABLE comments(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    post_id UUID NOT NULL REFERENCES posts(id),

    body TEXT NOT NULL
);

CREATE TABLE tags(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL UNIQUE
); 

--one post can have multiple tags and one tag can be associated with multiple posts
--for that we establish many to many relationship between posts and tags 

CREATE TABLE post_tags(
    post_id UUID NOT NULL REFERENCES posts(id),

    tag_id UUID NOT NULL REFERENCES tags(id),

    -- a composite primary key is a primary key that consists of two or more columns in a table. 
    --take composite primary key to ensure that the smae is not repeated in the table 
    PRIMARY KEY(post_id, tag_id)
); 


INSERT INTO users (name) 
VALUES 
('John Doe'), 
('Jane Smith'), 
('Alice Johnson');

INSERT INTO posts (user_id, title, status, views)
VALUES
((SELECT id FROM users WHERE name = 'John Doe'), 'First Post', 'published', 100),
((SELECT id FROM users WHERE name = 'Jane Smith'), 'Second Post', 'draft', 50),
((SELECT id FROM users WHERE name = 'Alice Johnson'), 'Third Post', 'published', 200);

INSERT INTO comments (post_id, body)
VALUES
((SELECT id FROM posts WHERE title = 'First Post'), 'Great post!'),
((SELECT id FROM posts WHERE title = 'First Post'), 'Thanks for sharing.'),
((SELECT id FROM posts WHERE title = 'Second Post'), 'Interesting read.') ;

INSERT INTO tags (name)
VALUES
('Technology'),
('Programming'),
('Lifestyle');

INSERT INTO post_tags (post_id, tag_id)
VALUES
((SELECT id FROM posts WHERE title = 'First Post'), (SELECT id FROM tags WHERE name = 'Technology')),
((SELECT id FROM posts WHERE title = 'First Post'), (SELECT id FROM tags WHERE name = 'Programming')),
((SELECT id FROM posts WHERE title = 'Second Post'), (SELECT id FROM tags WHERE name = 'Lifestyle'));   

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM comments;
SELECT * FROM tags;
SELECT * FROM post_tags;