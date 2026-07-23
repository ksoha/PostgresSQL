
--drop if any such table exist 
DROP TABLE IF EXISTS basics.schema ; 

CREATE TABLE basics.schema (

    --create an auto incrementing value 
    --primary key simply means that this column uniquely identifies each row in the table 
    --it should be unique and not null 

    id SERIAL PRIMARY KEY, 

    --create the values for the table  

    --text -> string 
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE , 
    age INTEGER CHECK (age >= 18),
    
    --Timestamp -> date and time format 
    created_at TIMESTAMP DEFAULT NOW()
); 

--insert some data into the table 
INSERT INTO basics.schema(name, email, age)
VALUES
   ('Soha', 'soha@example.com', 21),
   ('John', 'john@example.com', 25) ;
;
