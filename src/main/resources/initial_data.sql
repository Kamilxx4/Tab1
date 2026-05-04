DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS flowers CASCADE;

CREATE TABLE flowers (
    flowers_id INT AUTO_INCREMENT PRIMARY KEY,
    flowers_name VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_flower_id INT
);

INSERT INTO flowers (flowers_name) VALUES
    ('Roza'),
    ('Tulipan'),
    ('Lilia'),
    ('Slonecznik'),
    ('Orchidea');