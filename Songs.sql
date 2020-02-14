CREATE TABLE songs (
        songid SERIAL,
        title TEXT,
        artist TEXT,
        misc_data JSON,
        -- musicbrainz id
        mbid uuid,
        createdon TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
        CONSTRAINT songs_pkey PRIMARY KEY (songid)
);

INSERT INTO songs (title, artist, misc_data) VALUES (
        'Coffee',
        'Billy McFeely',
        '{"album": "Refrigerator Graveyard", "bpm": 180}'
);

INSERT INTO songs (title, artist, misc_data) VALUES (
        'Cooking',
        'Duster',
        '{"album": "Contemporary Movement", "track_no": 8}'
);

INSERT INTO songs (title, artist, misc_data) VALUES (
        'Black Paint',
        'Death Grips',
        '{"album": "Year of the Snitch", "year": 2019}'
);

INSERT INTO songs (title, artist, misc_data) VALUES (
        'Three Bedrooms in a Good Neighbhorhood',
        'Death Grips',
        '{"album": "Bottomless Pit", "year": 2016}'
);

INSERT INTO songs (title, artist, misc_data) VALUES (
        'Get Got',
        'Death Grips',
        '{"album": "The Money Store", "year": 2012}'
);
