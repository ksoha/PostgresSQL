
--inner join is only going to return the matching rows from the table 
-- the matching condition in inner join is very important 

SELECT 
    users.name AS author_name, 
    posts.title AS post_title,
    posts.status, 
    posts.views
FROM posts 
   -- to get the author name we need to join the users table with the posts table
INNER JOIN users 
   ON posts.user_id = users.id -- matching condition 
 WHERE posts.status = 'published'-- filter the result set to only include published posts
 ORDER BY posts.views DESC; -- sort the result set by views in descending order  