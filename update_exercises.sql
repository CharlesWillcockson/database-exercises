USE codeup_test_db;

# Select all albums in the table
SELECT 'ALL' AS 'ALBUMS';
SELECT * FROM albums;

# Make all of the albums 10x more popular (sales *10)

UPDATE albums
SET sales = sales * 10;
# SELECT * FROM albums;

# Select all albums before 1980
SELECT '1980' AS 'Albums released before';
SELECT * FROM albums WHERE release_date < 1980;

# Move albums to the 1800s

UPDATE albums
SET release_date = (release_date - 100) WHERE release_date < 1980;
# SELECT * FROM albums;

SELECT 'Michael Jackson' AS 'Albums by';
SELECT * FROM albums WHERE artist = "Michael Jackson";

UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;