
-- like -> case sensitive pattern matching 
-- ilike -> case insensitive pattern matching
-- % -> zero or more characters
-- _ -> exactly one character

-- the '%' means anything after can come after the character A 
SELECT name, price 
FROM products 
WHERE name LIKE 'A%' ; 

-- same result as above but case insensitive
SELECT name, price 
FROM products 
WHERE name ILIKE 'a%' 
  OR category ILIKE 'a%' ; -- checkin in multiple columns