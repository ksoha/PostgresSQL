
--returning -> returns the row immedeiately after the insert statement is executed 

INSERT INTO products (name, category, price, stock, sku)
VALUES (
    'Google Pixel 8',
    'Smartphone',
    69999.00,
    25,
    'MOB-GP8'
)
RETURNING id, name, price; -- returns the id, name and price of the newly inserted product