CREATE TABLE flowers (
    flowers_id INT AUTO_INCREMENT PRIMARY KEY,
    flowers_name VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_flower_id INT,
    CONSTRAINT fk_favourite_flower 
        FOREIGN KEY(user_flower_id) 
        REFERENCES flowers(flowers_id)
);

CREATE TABLE garden (
    user_id INT NOT NULL,
    flower_id INT NOT NULL,
    PRIMARY KEY (user_id, flower_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_flower FOREIGN KEY (flower_id) REFERENCES flowers(flowers_id)
);

INSERT INTO flowers (flowers_name) VALUES 
    ('Roza'),
    ('Tulipan'),
    ('Lilia'),
    ('Slonecznik'),
    ('Orchidea');