SELECT name, price, stock, sku
FROM products
WHERE sku = 'LAP-MBA-M2';

UPDATE products
SET price = 94139.99,
    stock = 10
WHERE sku = 'LAP-MBA-M2'; -- update single row using multiple columns

SELECT name, price, stock, sku
FROM products
WHERE sku = 'LAP-MBA-M2';