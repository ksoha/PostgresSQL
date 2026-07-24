
--INSERT INTO products (name, category, price, stock, sku)
--VALUES 
--('Corsair K95 RGB Platinum', 'Accessories', 14999.00, 20, 'KEY-K95RGB'),
--('Fitbit Charge 6', 'Wearables', 19999.00, 15, 'WAT-FBC6');

DELETE FROM products 
WHERE name = 'Fitbit Charge 6'; -- delete a single row using a condition


SELECT * FROM products; -- check the table after deletion
