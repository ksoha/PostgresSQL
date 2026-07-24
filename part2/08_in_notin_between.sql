
-- IN -> value must match one of the values in the list
-- NOT IN -> value must not match any of the values in the list
-- BETWEEN -> value must be within the range of the two values (inclusive)

SELECT name, price, category
FROM products 
WHERE category IN ('Laptop', 'Smartphone') -- category must be either Laptop or Smartphone
  AND price BETWEEN 50000 AND 150000 ;


  SELECT name, price, category 
  FROM products 
  WHERE category NOT IN ('Accessories', 'Monitor')
   AND price NOT BETWEEN 5000 AND 10000 ; --category must not be Accessories or Moniter 