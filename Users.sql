CREATE EXTENSION pgcrypto; --Allows PostgreSQL to understand UUIDS.  Only have to create the extension once for a database

-- DROP TABLE users;

CREATE TABLE users (
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        username VARCHAR(255) NOT NULL,
        userid SERIAL,
        password CHAR(64),
        createdon TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
        CONSTRAINT user_pkey PRIMARY KEY (id) 
);

INSERT INTO users (username, password) VALUES (
        'johnsmith',
        'password123'
);

INSERT INTO users (username, password) VALUES (
        'janedoe',
        'password321'
);
