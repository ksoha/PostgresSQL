
-- alias will make the query shorter and easier to read 

-- posts as p 
SELECT 
  p.title AS post_title,
  p.status , 
  p.views , 
  u.name AS author_name, 
  c.body AS comment_body
FROM posts AS p 
INNER JOIN users AS u 
  ON p.user_id = u.id 
LEFT JOIN comments AS c 
   ON p.id = c.post_id
   ORDER BY p.title, u.name, c.body; -- sort the result set by post title, author name, and comment body
   
