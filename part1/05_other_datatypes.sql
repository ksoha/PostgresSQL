
DROP TABLE IF EXISTS basics.app_events; 

CREATE TABLE basics.app_events(

    --UUID is a unique indentifier that is used to uniquely identify each row in the table 
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

    --JSONB is a data type that is used to store JSON data in a binary format. 
    metadata JSONB DEFAULT '{}'::JSONB,

    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events(event_name, metadata) 
VALUES
    ('User Signed Up', '{"user_id": 1, "plan": "free"}'),
    ('User Upgraded Plan', '{"user_id": 1, "plan": "premium"}'),
    ('User Logged In', '{"user_id": 2}');

    

    --to find a specific event by its name, u can use the following query: 
    SELECT 
      event_name, 
      metadata ->> 'user_id' AS user_id 
      FROM basics.app_events
      WHERE metadata ? 'User Signed Up';

