CREATE EXTENSION pgcrypto; --Allows PostgreSQL to understand UUIDS.  Only have to create the extension once for a database

DROP TABLE users;

CREATE TABLE "users" (
	"userid" INTEGER NOT NULL DEFAULT 'nextval(''users_userid_seq''::regclass)',
	"username" VARCHAR(255) NOT NULL,
	"password" TEXT NULL DEFAULT NULL,
	"createdon" TIMESTAMP NOT NULL DEFAULT 'now()',
	"spotify_playlists" JSON NULL DEFAULT NULL,
	"spotify_accesstoken" VARCHAR(255) NULL DEFAULT 'NULL::character varying',
	"spotify_refreshtoken" VARCHAR(255) NULL DEFAULT 'NULL::character varying',
	"spotify_id" VARCHAR(255) NULL DEFAULT 'NULL::character varying',
	PRIMARY KEY ("userid")
);

INSERT INTO users (username, password) VALUES (
        'johnsmith',
        'password123'
);

INSERT INTO users (username, password) VALUES (
        'janedoe',
        'password321'
);
