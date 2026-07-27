
-- many to many realtionships
-- one tag can be associated with many posts 
-- one post can have many tags

-- posts.id === post_tags.post_id 
-- tags.id === post_tags.tag_id

-- show me every post with its tags 
SELECT 
    posts.title AS post_title, 
    tags.name AS tag_name 
FROM posts 
    INNER JOIN post_tags 
        ON posts.id = post_tags.post_id -- matching condition between posts and post_tags
    INNER JOIN tags 
        ON post_tags.tag_id = tags.id -- matching condition between post_tags and tags
        ORDER BY posts.title, tags.name; -- sort the result set by post title    