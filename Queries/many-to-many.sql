-- Create tables for books, libraries, and the relationship table
CREATE TABLE books (book_id INTEGER PRIMARY KEY AUTO_INCREMENT, title VARCHAR(255), author VARCHAR(100));
CREATE TABLE libraries (library_id INTEGER PRIMARY KEY AUTO_INCREMENT, username VARCHAR(50));
CREATE TABLE libraries_books (library_id INTEGER, book_id INTEGER, FOREIGN KEY (library_id) REFERENCES libraries(library_id), FOREIGN KEY (book_id) REFERENCES books(book_id));

-- data for books
INSERT INTO books (title, author) VALUES ("Hitchhiker's Guide to the Galaxy", "Douglad Adams");
INSERT INTO books (title, author) VALUES ("It", "Stephen King");
INSERT INTO books (title, author) VALUES ("Dirk Gently's Holistic Detective Agency", "Douglas Adams");
INSERT INTO books (title, author) VALUES ("Ahsoka", "E.K. Johnston");

SELECT * FROM books;

-- data for libraries
INSERT INTO libraries (username) VALUES ("BestTwin");
INSERT INTO libraries (username) VALUES ("SuperBestTwin");
INSERT INTO libraries (username) VALUES ("NoCapes");
INSERT INTO libraries (username) VALUES ("Snips");
INSERT INTO libraries (username) VALUES ("SkyGuy");

SELECT * FROM libraries;

-- data for relationship table
INSERT INTO libraries_books (library_id, book_id) VALUES (1, 2);
INSERT INTO libraries_books (library_id, book_id) VALUES (2, 2);
INSERT INTO libraries_books (library_id, book_id) VALUES (3, 1);
INSERT INTO libraries_books (library_id, book_id) VALUES (3, 3);
INSERT INTO libraries_books (library_id, book_id) VALUES (4, 4);

SELECT * FROM libraries_books;

--Select to see all books in each users library
SELECT libraries.username, books.title, books.author FROM libraries_books INNER JOIN books ON libraries_books.book_id = books.book_id INNER JOIN libraries ON libraries_books.library_id = libraries.library_id ORDER BY username;
