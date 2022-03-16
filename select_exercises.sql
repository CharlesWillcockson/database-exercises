USE codeup_test_db;

SELECT 'Pink Floyd' AS 'Albums recorded by';
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'Release year for';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Nevermind' AS 'Genre of';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT '1990s' AS 'Albums released in';
SELECT name FROM albums WHERE release_date LIKE '199%';
SELECT 'Less than 20 million certified sales' AS 'Albums with';
SELECT * FROM albums WHERE sales < 20;
SELECT 'Rock' AS 'Albums with a genre of';
SELECT * FROM albums WHERE genre = 'rock';