
--problems if primary key is not given : 
   --we cannnot uniquickly identify a record in the table 

   DROP TABLE IF EXISTS basics.sales; 

   CREATE TABLE basics.sales(

      id SERIAL PRIMARY KEY,

      title TEXT NOT NULL,

      price NUMERIC(10, 2) NOT NULL DEFAULT 0.00,

      created_at TIMESTAMP NOT NULL DEFAULT NOW()
   );

   INSERT INTO basics.sales(title, price)
    VALUES
        ('Product A', 19.99),
        ('Product B', 29.99),
        ('Product C', 39.99);

        --trying to insert a duplicate primary key value will result in an error 
        INSERT INTO basics.sales(id, title, price)
        VALUES
            (1, 'Product D', 49.99); -- This will fail because id 1 already exists in the table.
             
            