CREATE EXTENSION pgcrypto; --Allows PostgreSQL to understand UUIDS.  Only have to create the extension once for a database

DROP TABLE users;

CREATE TABLE users (
        userid SERIAL,
        username VARCHAR(255) NOT NULL,
        password TEXT,
        misc_data JSON,
        createdon TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
        CONSTRAINT user_pkey PRIMARY KEY (userid) 
);

INSERT INTO users (username, password) VALUES (
        'johnsmith',
        'password123'
);

INSERT INTO users (username, password) VALUES (
        'janedoe',
        'password321'
);
