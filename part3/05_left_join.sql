
--left join keeps all the rows from the left side of the table 
--if the right table has the matching row then postgres will include it 
-- but if the right table doesnt have matching row then it will return NULL 

--post table -> left table 
--comments table -> right table 

--because every post can have comments or cannot have comments 

--query to show all the posts and their comments if they have any
SELECT 
    posts.title AS post_title, 
    comments.body AS comment_body
FROM posts 
    -- to get comments for each post we need to join the comments table with the post table 
  LEFT JOIN comments 
    ON posts.id = comments.post_id -- matching condition
    ORDER BY posts.title; -- sort the result set by post title in ascending order


    --if we use inner join it will hide the posts that dont have comments 
    --but left join will show all the posts , including theposts that dont have comments it will show null for those posts