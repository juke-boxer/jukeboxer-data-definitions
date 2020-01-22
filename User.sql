CREATE TABLE user (
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        firstname VARCHAR(255) NOT NULL DEFAULT(''),
        lastname VARCHAR(255) NOT NULL DEFAULT(''),
        userid SERIAL,
        password CHAR(64),
        createdon TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
        CONSTRAINT user_pkey PRIMARY KEY (id) 
);

INSERT INTO user (firstname, lastname, password) VALUES (
        'John',
        'Smith',
        'password123'
);

INSERT INTO user (firstname, lastname, password) VALUES (
        'Jane',
        'Doe',
        'password321'
);
