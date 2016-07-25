
UPDATE artists SET tracks=0 WHERE tracks IS NULL;

SELECT * FROM artists;

DELETE FROM artists WHERE tracks=0;

SELECT * FROM artists;



DELETE FROM images
WHERE id NOT IN (SELECT image FROM artists);

SELECT * FROM images;


DELETE FROM images WHERE id NOT IN (1, 13);

