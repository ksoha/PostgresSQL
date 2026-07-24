CREATE TABLE products (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL,

    category TEXT NOT NULL,

    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),

    stock INTEGER NOT NULL CHECK (stock >= 0),

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    sku TEXT UNIQUE,

    created_at TIMESTAMP NOT NULL DEFAULT NOW()

);

INSERT INTO products (name, category, price, stock, sku) VALUES
('MacBook Air M2', 'Laptop', 99999.99, 15, 'LAP-MBA-M2'),
('iPhone 15', 'Smartphone', 79999.00, 30, 'PHN-IP15'),
('Sony WH-1000XM5', 'Headphones', 28999.50, 25, 'AUD-XM5'),
('Logitech MX Master 3S', 'Accessories', 9499.00, 40, 'ACC-MX3S'),
('Samsung 27" 4K Monitor', 'Monitor', 32999.99, 12, 'MON-SAM27'),
('Mechanical Keyboard RGB', 'Accessories', 5999.00, 50, 'KEY-RGB01'),
('Dell XPS 15', 'Laptop', 174999.00, 8, 'LAP-XPS15'),
('Apple Watch Series 10', 'Wearables', 45999.00, 20, 'WAT-AW10');

SELECT * FROM products;