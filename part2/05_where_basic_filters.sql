
--where is a filter that allows you to filter the rows returned by a query based on a specified condition. 
SELECT name, category, price
FROM products 
WHERE category = 'Electronics' AND price < 500;