
-- it always calculates one result from many rows 
-- COUNT() - counts the number of rows in a group
-- SUM() - sums the values in a group
-- AVG() - calculates the average of the values in a group
-- MIN() - finds the minimum value in a group
-- MAX() - finds the maximum value in a group

--reading all the rows from a certain table 
SELECT 
   COUNT(*) AS total_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS minimum_views,
    MAX(views) AS maximum_views
FROM posts;