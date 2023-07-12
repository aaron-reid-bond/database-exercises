USE codeup_test_db;

SELECT record_name FROM albums;

UPDATE albums SET sales = sales * 10

SELECT record_name FROM albums WHERE relese_date <= 1980;

UPDATE albums SET relese_date = 1800 WHERE relese_date <= 1980;

SELECT record_name FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';