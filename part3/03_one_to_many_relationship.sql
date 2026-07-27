
-- one to many relationship : one parent row can have many child rows 
-- one yser can create many posts but each post can only belong to one user 
-- user - parent table 
-- post - child table

-- post.id -> user.id (foreign key)
-- user.id is the original key 
-- post.user_id stores that original user.id into the posts table 

--show all post with their author 
SELECT 
   users.name AS author_name, 
   posts.title AS post_title,
   posts.status 
FROM users 
INNER JOIN posts 
-- join the two tables based on the foreign key relationship
ON users.id = posts.user_id -- one to many relationship between users and posts
ORDER BY users.name, posts.title; -- using order by to sort the result set by author name and post title   