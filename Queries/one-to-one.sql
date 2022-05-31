-- Create tables to represent our User and Library
-- for now our book_id will just be a number we provide. This relationship will change when we create our next relationship
CREATE TABLE library (id INTEGER PRIMARY KEY AUTO_INCREMENT, book_id INTEGER);
CREATE TABLE user (id INTEGER PRIMARY KEY AUTO_INCREMENT, username VARCHAR(50), email VARCHAR(100), library_id INTEGER, FOREIGN KEY (library_id) REFERENCES library(id));
-- the library_id on our user table is our foreign key into the library table

INSERT INTO library (book_id) VALUES (1); -- library_id = 1
INSERT INTO library (book_id) VALUES (4); -- library_id = 2
INSERT INTO library (book_id) VALUES (2); -- library_id = 3
INSERT INTO library (book_id) VALUES (6); -- library_id = 4
INSERT INTO library (book_id) VALUES (3); -- library_id = 5 Not assigned to any user

INSERT INTO user (username, email, library_id) VALUES ("BestTwin", "fredWeasley@mail.com", 1);
INSERT INTO user (username, email, library_id) VALUES ("SuperBestTwin", "georgeWeasley@mail.com", 2);
INSERT INTO user (username, email, library_id) VALUES ("NoCapes", "EdnaMode@mail.com", 3);
INSERT INTO user (username, email, library_id) VALUES ("Snips", "AhsokaTano@mail.com", 4);
INSERT INTO user (username, email, library_id) VALUES ("SkyGuy", "AnakinSkywalker@mail.com", NULL); -- has no library assigned to it

SELECT username, book_id FROM user JOIN library ON user.library_id = library.id;
SELECT username, email, book_id FROM user LEFT JOIN library ON user.library_id = library.id ORDER BY user.username;
SELECT username, email, book_id FROM user RIGHT JOIN library ON user.library_id = library.id;