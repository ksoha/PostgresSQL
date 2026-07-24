
--updating multiple rows in a table 

SELECT name, price, stock, is_active 
FROM products 
WHERE category = 'Laptop';

UPDATE products 
SET price = price * 0.9, -- applying 10% discount on all laptops
    stock = stock + 5 -- adding 5 more units to the stock of all laptops
WHERE category = 'Laptop'; -- update multiple rows using a condition

--set the is_active column to false for all products that are out of stock
UPDATE products 
SET is_active = FALSE 
WHERE stock =0; -- update multiple rows using a condition