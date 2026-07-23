
--null -> unkown/missing value 
--empty string -> known value but no characters 
--zero -> actual numeric value of 0 

DROP TABLE IF EXISTS basics.value_examples; 

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT, 
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples(nickname, bio, score)
VALUES
--nickname is null 
    (null, 'lalala' , 10),
    --nickname is emppty string 
    ('', 'lalala', 10),
    --score is zero 
    --missing value and zero is different, zero means valur is present which is zero
    ('John', 'lalala', 0);

    --SELECT * FROM basics.value_examples;

    --where the nicknam is not null 
    SELECT * FROM basics.value_examples
    WHERE nickname IS NOT NULL;