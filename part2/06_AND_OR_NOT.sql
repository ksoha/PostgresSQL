
-- AND -> every condition must be true 
-- OR -> at least one condition must be true 
-- NOT -> negates a condition 

--products that are in the Electronics category and have a price greater than 1000
SELECT name, category, price 
FROM products 
WHERE category = 'Electronics' AND price > 1000;

SELECT name, category, price
FROM products
WHERE category = 'Electronics' OR price > 1000;

SELECT name, category, price
FROM products
WHERE NOT category = 'Electronics';