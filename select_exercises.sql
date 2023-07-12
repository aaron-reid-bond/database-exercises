USE codeup_test_db;

SELECT record_name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE record_name = 'Nevermind';

SELECT record_name FROM albums WHERE release_date = 1990;

SELECT record_name FROM albums WHERE sales <= 20;

SELECT record_name FROM albums WHERE genre = 'Rock';