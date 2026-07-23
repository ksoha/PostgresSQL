
--db -> schema -> tables -> rows 

--create a new schema inside the database 
--if not exists, it will prevent an error if the schema already exists 
CREATE SCHEMA IF NOT EXISTS basics;

--extension to generate random UUIDs 
CREATE EXTENSION IF NOT EXISTS pgcrypto;

--query to give all the schemas available 
SELECT schema_name 
FROM information_schema.schemata
ORDER BY schema_name;