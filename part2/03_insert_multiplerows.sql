
INSERT INTO PRODUCTS (name, category, price, stock, sku)
 VALUES
('Google Pixel 8', 'Smartphone', 69999.00, 25, 'PHN-GP8'),
('Samsung Galaxy S23', 'Smartphone', 89999.00, 20, 'PHN-SGS23'),
('Apple iPhone 14', 'Smartphone', 79999.00, 30, 'PHN-AIP14');

--checking the multiple rows inserted
SELECT name , category, price, stock, sku
FROM products 
WHERE sku IN ('P
HN-GP8', 'PHN-SGS23', 'PHN-AIP14');