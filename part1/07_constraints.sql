
--database contraints are much more impotant that backend validation 
DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,

    username TEXT NOT NULL,
  
    email TEXT NOT NULL UNIQUE, 

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    age INTEGER CHECK (age >= 18), 

    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO basics.accounts(username, email, age)
VALUES 
    ('soha', 'soha@example.com', 25); 

    SELECT * FROM basics.accounts;
    