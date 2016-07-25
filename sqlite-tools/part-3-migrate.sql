

ATTACH DATABASE 'database2.sqlite' AS db2;



CREATE TABLE db2.artists (
    name TEXT UNIQUE NOT NULL,
    tracks INTEGER,
    description TEXT,
    image INTEGER
);

CREATE TABLE db2.images (
    id INTEGER PRIMARY KEY,
    file_name TEXT UNIQUE NOT NULL
);



BEGIN TRANSACTION;
INSERT INTO db2.images SELECT * FROM images;
INSERT INTO db2.artists SELECT * FROM main.artists;
END TRANSACTION;

SELECT * FROM db2.images;
SELECT * FROM db2.artists;



BEGIN TRANSACTION;
INSERT INTO db2.images (SELECT * FROM images);
INSERT INTO db2.artists (SELECT * FROM main.artists);
ROLLBACK TRANSACTION;



PRAGMA db2.journal_mode;
PRAGMA db2.journal_mode = DELETE;
PRAGMA db2.journal_mode = TRUNCATE;
PRAGMA db2.journal_mode = PERSIST;
PRAGMA db2.journal_mode = MEMORY;
PRAGMA db2.journal_mode = OFF;


