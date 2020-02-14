DROP TABLE playlists;

CREATE TABLE playlists (
        playlistid SERIAL,
        title TEXT,
        description TEXT,
        ownerid SERIAL REFERENCES users (userid),
        -- array of ids from songs
        songs_list INTEGER[],
        misc_data JSON,
        createdon TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
        CONSTRAINT playlists_pkey PRIMARY KEY (playlistid)
);

INSERT INTO playlists (title, description, ownerid, songs_list, misc_data) VALUES (
        'Chill Vibes',
        'Chill music to chill to',
        1,
        '{1, 2}',
        '{"on_spotify": true, "on_youtube_music": false, "on_google_music": false}'
);

INSERT INTO playlists (title, description, ownerid, songs_list, misc_data) VALUES (
        'Death Grips is Online',
        'Death Grips is Online',
        1,
        '{3, 4, 5}',
        '{"on_spotify": true, "on_youtube_music": false, "on_google_music": false}'
);
