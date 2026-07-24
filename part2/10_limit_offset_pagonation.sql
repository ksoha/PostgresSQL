
-- limit -> how many rows you want to return 
-- offset -> how many rows u=you want to skip 

--returning 5 products and sort the names in asceding order 
SELECT name, price 
FROM products 
ORDER BY name ASC 
LIMIT 5; 

--offset 
-- page 1 -> show first 5 products 
SELECT name, price 
FROM products 
ORDER BY name ASC 
LIMIT 5 OFFSET 0; 

-- page 2 -> show next 5 products (skip first 5 products)
SELECT name, price 
FROM products 
ORDER BY name ASC 
LIMIT 5 OFFSET 5; 


-- (page -1) * limit ->offset 
-- (2-1) * 5 = 5 -> offset for page 2 (skipping 5 products)
-- (3-1) * 5 = 10 -> offset for page 3 (skipping 10 products)

SELECT name, price 
FROM products 
ORDER BY name ASC 
LIMIT 5 OFFSET 10; 