-- Create tables for authors and books
CREATE TABLE author (author_id INTEGER PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(50), last_name VARCHAR(50));
CREATE TABLE books (book_id INTEGER PRIMARY KEY AUTO_INCREMENT, title VARCHAR(500),  author_id INTEGER, FOREIGN KEY (author_id) REFERENCES author(author_id));

-- add author data
INSERT INTO author (first_name, last_name) VALUES ("Douglas","Adams");
INSERT INTO author (first_name, last_name) VALUES ("Stephen","King");
INSERT INTO author (first_name, last_name) VALUES ("E.K.","Johnston");

SELECT * FROM author;

-- add book data
INSERT INTO books (title, author_id) VALUES ("Hitchhiker's Guide to the Galaxy", (SELECT author_id FROM author WHERE first_name = "Douglas" AND last_name = "Adams"));
INSERT INTO books (title, author_id) VALUES ("It", (SELECT author_id FROM author WHERE first_name = "Stephen" AND last_name = "King"));
INSERT INTO books (title, author_id) VALUES ("Dirk Gently's Holistic Detective Agency", (SELECT author_id FROM author WHERE first_name = "Douglas" AND last_name = "Adams"));
INSERT INTO books (title, author_id) VALUES ("Ahsoka", (SELECT author_id FROM author WHERE first_name = "E.K." AND last_name = "Johnston"));

SELECT * FROM books;

-- Join books and authors tables together
SELECT title, first_name, last_name FROM books JOIN author ON books.author_id = author.author_id ORDER BY last_name;