USE codeup_test_db;

SELECT '1991' AS 'Albums released in';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Disco' AS 'Genre';
DELETE FROM albums WHERE genre = 'disco';
SELECT 'Whitney Houston' AS 'Albums by';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;
