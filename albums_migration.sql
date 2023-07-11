USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(100) NOT NULL DEFAULT 'NONE',
                        record_name VARCHAR(100) NOT NULL,
                        release_date INT NOT NULL,
                        sales FLOAT NOT NULL,
                        genre VARCHAR(100) DEFAULT 'Unknown Genre',
                        PRIMARY KEY (id)
);