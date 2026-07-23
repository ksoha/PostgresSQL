
DROP TABLE IF EXISTS basics.products_basic; 

CREATE TABLE basics.products_basic(

    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    total_view BIGINT DEFAULT 0,

    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT true
);

--queries to insert data into the table 
INSERT INTO basics.products_basic(name, description, stock, total_view, price, is_active)
VALUES
    ('Product 1', 'This is product 1', 10, 1000, 19.99, true),
    ('Product 2', 'This is product 2', 5, 500, 29.99, true),
    ('Product 3', 'This is product 3', 0, 200, 9.99, false);

    SELECT * FROM basics.products_basic;