CREATE TABLE artists (
    name TEXT UNIQUE NOT NULL,
    tracks INTEGER,
    description TEXT,
    image INTEGER
);



CREATE TABLE images (
    id INTEGER PRIMARY KEY,
    file_name TEXT UNIQUE NOT NULL
);



INSERT INTO artists (name, tracks, description, image)
VALUES ('Цой', 10, 'Легенда русского рока', 1);

INSERT INTO artists (name) VALUES ('<Unknown>');
INSERT INTO artists (name, tracks) VALUES ('<Unknown>', NULL);

INSERT INTO artists (name, tracks, image) VALUES ('Кино', 20, 1);

INSERT INTO images VALUES (1, 'covers/kino.jpg');

INSERT INTO images VALUES
    (13, 'covers/kino89.jpg'),
    (-3, 'covers/unknown.jpg'),
    (14, 'covers/onile.jpg');



INSERT INTO artists (name,image )
VALUES ('O''Nile', 14);





INSERT INTO images (file_name) VALUES (14);



SELECT * FROM artists;



SELECT name, image FROM artists;



SELECT rowid, name, image FROM artists;



SELECT name, ifnull(image, '<no image>') FROM artists;

SELECT name,
    CASE WHEN image IS NULL THEN '<no image>' ELSE image END
FROM artists;



SELECT name, random() FROM artists;



SELECT name, ifnull(image, '<no image>') AS image_nonnull,
    random() AS rnd_index
FROM artists;



SELECT * FROM artists WHERE name LIKE 'ц_%';

SELECT * FROM artists WHERE name LIKE 'Ц_%';

SELECT * FROM artists WHERE name GLOB 'Ц?*';



SELECT * FROM artists WHERE tracks>15;



SELECT * FROM artists WHERE tracks>15
UNION
SELECT * FROM artists WHERE tracks<=15;

SELECT * FROM artists;


SELECT * FROM artists WHERE tracks>15
UNION
SELECT * FROM artists WHERE tracks<=15
UNION
SELECT * FROM artists WHERE tracks IS NULL;



SELECT * FROM artists ORDER BY tracks;
SELECT * FROM artists ORDER BY tracks ASC;
SELECT * FROM artists ORDER BY tracks DESC;



SELECT * FROM artists ORDER BY tracks, name;



SELECT * FROM artists
ORDER BY (tracks IS NULL), tracks;



SELECT * FROM artists
GROUP BY image;



SELECT group_concat(name), image
FROM artists
GROUP BY image;



SELECT *
FROM artists LEFT JOIN images ON artists.image=images.id;

