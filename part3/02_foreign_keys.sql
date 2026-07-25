
--foreign key -> is a column or a set of columns in one table that point to the primary key of another table. 
--posts.user_id is a foreign key that references users.id 
--that means every post must be associated with a user.

--parent table 
SELECT id, name
FROM users;

--child table 
SELECT id, user_id, title
FROM posts;
