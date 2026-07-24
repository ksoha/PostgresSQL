
-- sorting in ascending order
SELECT name, price
FROM products 
ORDER BY price ASC; --deafault is ascending order, so ASC is optional

-- descending order
SELECT name, price
FROM products 
ORDER BY price DESC;

--sorting multiple columns 
SELECT name, price, category 
FROM products 
ORDER BY category ASC, price DESC; -- first sort by category in ascending order and then by price in descending order