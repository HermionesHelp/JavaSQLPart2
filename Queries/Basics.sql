--Create
CREATE TABLE books (id INTEGER PRIMARY KEY AUTO_INCREMENT, title VARCHAR(255), author VARCHAR(100));

INSERT INTO books (title, author) VALUES ("Hitchhiker's Guide to the Galaxy", "Douglad Adams");
INSERT INTO books (title, author) VALUES ("It", "Stephen King");
INSERT INTO books (title, author) VALUES ("Dirk Gently's Holistic Detective Agency", "Douglas Adams");
INSERT INTO books (title, author) VALUES ("Ahsoka", "E.K. Johnston");

--Read
SELECT * FROM books;
SELECT * FROM books WHERE title = "Ahsoka";
SELECT title FROM  books WHERE author = "Douglas Adams";

--Update
UPDATE books SET author = "Douglas Adams" WHERE author = "Douglad Adams";
-- *Can’t do the update based on a row other than the ID in safe mode.
UPDATE books SET author = "Douglas Adams" WHERE id = 1;
-- * This is a good reason why we might decide to move to separate tables for books and authors.

Delete
DELETE FROM books WHERE author ="Douglas Adams";
-- *Won't work in safe mode
DELETE FROM books WHERE id = 1;
DROP TABLE books;
