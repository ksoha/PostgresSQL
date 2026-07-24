
--select star -> every column 
--select specific columns -> only the columns you need

SELECT name, category, price
FROM products; --will only return the name, category, and price columns from the products table

--AS creates alias for the output of that column name 
--makes the columns more readable and user-friendly 

SELECT name AS "Product Name", category AS "Product Category", price AS "Product Price"
FROM products; --will return the name, category, and price columns with user-friendly column names